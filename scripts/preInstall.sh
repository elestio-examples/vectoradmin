mkdir -p ./data;
mkdir -p ./pgadmin;
chown -R 1001:1001 ./data;
chown -R 1001:1001 ./pgadmin;

cat <<EOT > ./servers.json
{
    "Servers": {
        "1": {
            "Name": "local",
            "Group": "Servers",
            "Host": "172.17.0.1",
            "Port": 59375,
            "MaintenanceDB": "postgres",
            "SSLMode": "prefer",
            "Username": "postgres",
            "PassFile": "/pgpass"
        }
    }
}
EOT


apt install jq -y