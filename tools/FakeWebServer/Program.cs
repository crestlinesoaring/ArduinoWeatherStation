using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace FakeWebServer
{
    class Program
    {
        static void Main(string[] args)
        {
            var listener = new TcpListener(IPAddress.Any, 80);
            listener.Start();
            Console.WriteLine("Listening for incoming connections...");
            while (true)
            {
                TcpClient client = listener.AcceptTcpClient();
                var t = new Thread(() => ClientSession(client));
                t.Start();
            }
        }

        static void ClientSession(TcpClient client)
        {
            Console.WriteLine("[" + client.Client.RemoteEndPoint + "] Received incoming connection");

            NetworkStream stream = client.GetStream();
            var reader = new StreamReader(stream);
            while (true)
            {
                string line = reader.ReadLine();
                if (line.Length == 0)
                    break;
                Console.WriteLine("[" + client.Client.RemoteEndPoint + "] " + line);
            }

            string response = "uploaded ok.";
            var writer = new StreamWriter(stream);
            writer.WriteLine("HTTP/1.0 200 OK");
            writer.WriteLine("Content-Length: " + response.Length);
            writer.WriteLine("Content-Type: text/html");
            writer.WriteLine("Connection: close");
            writer.WriteLine();
            writer.Write(response);

            writer.Flush();

            Console.WriteLine("[" + client.Client.RemoteEndPoint + "] Closing");
            client.Close();
            Console.WriteLine();
        } 
    }
}
