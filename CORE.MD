## The demo itself

### Installing dbt in your local environment

1. Install the `dbt-trino` adapter plugin, which allows you to use dbt together with Trino / Starburst Galaxy. You may want to do this inside a Python virtual environment. Below I list the steps I took to create my virtual environment.

```sh
python3 -m venv dbt-env
```

```sh
source dbt-env/bin/activate
```

```sh
pip install --upgrade pip wheel setuptools
```

```sh
pip install dbt-trino
```

Make sure you are up to date on your versions.

```sh
dbt --version
```

Other helpful links to getting started with setting up your virtual environment:

- [Install with pip](https://docs.getdbt.com/docs/get-started/pip-install) dbt instructions
- [Starburst documentation](https://docs.starburst.io/data-consumer/clients/dbt.html) which dives into more detail about the process described above
- [Python download](https://www.python.org/downloads/)

### Getting Started with this repository

1. Clone this GitHub repo to your local machine: `git clone https://github.com/monimiller/dbt-galaxy-covid-demo.git`

2. Copy `sample.profiles.yml` to the root of your machine, `~/dbt/profiles.yml`. (Why? This file will contain your `password` for connecting to Trino/Starburst, so you don't want it checked into `git`.)

```
cp ./sample.profiles.yml ~/.dbt/profiles.yml
```

4. Open the file, and update the fields denoted by `<>` with your own user, password, cluster, etc. Specify dbt_aws_tgt as your catalog if you want Iceberg tables. If not, use dbt_aws_source. You can keep the sample schema.

5. Verify that you can connect to Trino / Starburst Galaxy. (If your Galaxy cluster is stopped, it may take a few moments for it to resume.)

```
dbt debug
```

6. Install dbt packages ([`dbt_utils`](https://hub.getdbt.com/dbt-labs/dbt_utils/latest/)) for use in the project:

```
dbt deps
```

7. Try running dbt:

```
dbt run
dbt test
dbt build
```

8. Generate and view documentation:

```
dbt docs generate
dbt docs serve
```
