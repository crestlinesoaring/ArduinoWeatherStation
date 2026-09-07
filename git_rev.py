import subprocess
from datetime import datetime, timezone
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
        log_line = subprocess.check_output(
            ["git", "log", "-1", "--format=%cs|%cI", "HEAD"],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        commit_date, commit_iso = log_line.split("|")
        year, month, day = commit_date.split("-")
        version_date = f"{year}/{month}/{day}"
        version_date_short = f"{year[2:]}{month}{day}"
        version_id = f"{version_date_short}-{commit_hash}"
        commit_dt = datetime.fromisoformat(commit_iso.replace("Z", "+00:00"))
        version_datetime = commit_dt.astimezone(timezone.utc).strftime(
            "%Y/%m/%d %H:%M:%S UTC"
        )
    except (subprocess.CalledProcessError, FileNotFoundError):
        pass

    return version_id, version_date, version_datetime, commit_hash


def write_version_h(info):
    version_id, version_date, version_datetime, commit_hash = info
    (project_root() / "src" / "version.h").write_text(
        "#pragma once\n"
        "// *** AUTO-GENERATED FILE — DO NOT EDIT ***\n"
        "// From git HEAD at build time via git_rev.py.\n"
        f'#define VERSION_ID "{version_id}"\n'
        f'#define VERSION_DATE "{version_date}"\n'
        f'#define VERSION_DATETIME "{version_datetime}"\n'
        f'#define VERSION_COMMIT "{commit_hash}"\n',
        encoding="utf-8",
    )


Import("env")

write_version_h(get_version_info())
