import subprocess
import sys
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
        log_line = subprocess.check_output(
            ["git", "log", "-1", "--format=%h|%cs|%cI", "HEAD"],
            text=True,
            stderr=subprocess.DEVNULL,
        ).strip()
        commit_hash, commit_date, commit_iso = log_line.split("|")
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


def write_version_h(root, version_id, version_date, version_datetime, commit_hash):
    (root / "src" / "version.h").write_text(
        "#pragma once\n"
        "// *** AUTO-GENERATED FILE — DO NOT EDIT ***\n"
        "// Updated by git_rev.py on each build (see VERSION in the repo root).\n"
        f'#define VERSION_ID "{version_id}"\n'
        f'#define VERSION_DATE "{version_date}"\n'
        f'#define VERSION_DATETIME "{version_datetime}"\n'
        f'#define VERSION_COMMIT "{commit_hash}"\n'
    )


def write_version_txt(root, version_id, version_date, version_datetime, commit_hash):
    (root / "VERSION").write_text(
        "# *** AUTO-GENERATED FILE — DO NOT EDIT ***\n"
        "# Updated by git_rev.py on commit (enable with: git config core.hooksPath .githooks).\n"
        "# Builds update src/version.h only; this file is not rewritten by pio run.\n"
        "#\n"
        f"version: {version_id}\n"
        f"commit: {commit_hash}\n"
        f"date: {version_date}\n"
        f"time: {version_datetime}\n"
    )


def write_build_artifacts(info):
    write_version_h(project_root(), *info)


def write_all_artifacts(info):
    root = project_root()
    write_version_h(root, *info)
    write_version_txt(root, *info)


if "--write-files" in sys.argv:
    write_all_artifacts(get_version_info())
    sys.exit(0)

Import("env")

version_id, version_date, version_datetime, _commit_hash = get_version_info()
write_build_artifacts(
    (version_id, version_date, version_datetime, _commit_hash)
)

env.Append(
    CPPDEFINES=[
        ("VERSION_ID", env.StringifyMacro(version_id)),
        ("VERSION_DATE", env.StringifyMacro(version_date)),
    ]
)
