import subprocess
import sys
from pathlib import Path


def project_root():
    try:
        return Path(__file__).resolve().parent
    except NameError:
        return Path.cwd()


def get_version_info():
    commit_hash = "unknown"
    version_date = "unknown"
    version_datetime = "unknown"
    version_id = "unknown"

    try:
        commit_hash = subprocess.check_output(
            ["git", "rev-parse", "--short", "HEAD"],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        version_datetime = subprocess.check_output(
            [
                "git",
                "log",
                "-1",
                "--format=%cd",
                "--date=format-local:%Y/%m/%d %H:%M:%S %z",
                "HEAD",
            ],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        version_date = version_datetime.split()[0]
        version_date_short = subprocess.check_output(
            [
                "git",
                "log",
                "-1",
                "--format=%cd",
                "--date=format:%y%m%d",
                "HEAD",
            ],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        version_id = f"{version_date_short}-{commit_hash}"
    except (subprocess.CalledProcessError, FileNotFoundError):
        pass

    return version_id, version_date, version_datetime, commit_hash


def write_version_files(version_id, version_date, version_datetime, commit_hash):
    root = project_root()
    (root / "src" / "version.h").write_text(
        "#pragma once\n"
        "// *** AUTO-GENERATED FILE — DO NOT EDIT ***\n"
        "// Updated by git_rev.py on each build (see VERSION in the repo root).\n"
        f'#define VERSION_ID "{version_id}"\n'
        f'#define VERSION_DATE "{version_date}"\n'
        f'#define VERSION_DATETIME "{version_datetime}"\n'
        f'#define VERSION_COMMIT "{commit_hash}"\n'
    )

    (root / "VERSION").write_text(
        "# *** AUTO-GENERATED FILE — DO NOT EDIT ***\n"
        "# Updated by git_rev.py on each build and on commit (if .githooks is enabled).\n"
        "#\n"
        f"version: {version_id}\n"
        f"commit: {commit_hash}\n"
        f"date: {version_date}\n"
        f"time: {version_datetime}\n"
    )


def update_version_files():
    info = get_version_info()
    write_version_files(*info)
    return info[:3]


if "--write-files" in sys.argv:
    update_version_files()
    sys.exit(0)

Import("env")

version_id, version_date, version_datetime = update_version_files()

env.Append(
    CPPDEFINES=[
        ("VERSION_ID", env.StringifyMacro(version_id)),
        ("VERSION_DATE", env.StringifyMacro(version_date)),
    ]
)
