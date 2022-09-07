#!/bin/sh
TOKEN=$(curl --location --request POST $ENDPOINT_LOGIN \
--header "api-key: $API_KEY" \
--header "Authorization: $API_TOKEN" \
--header 'Cookie: ci_session=rqmp4n5l887iugatcdd86oq3ajt9fi91' \
--form "username=$USERNAME" \
--form "password=$PASSWORD" | jq -r '.data.token')

curl --location --request POST $ENDPOINT_PULANG \
--header "api-key: $API_KEY" \
--header "Authorization: Bearer $TOKEN" \
--header 'Cookie: ci_session=rqmp4n5l887iugatcdd86oq3ajt9fi91' \
--form 'id_pegawai="14"' \
--form 'qr_code="O6ksuIYl6zSFPYAofLxTQD8pMM5SkQC5"' \
--form 'devices_id="09a7e8144e5f15d0"' \
--form 'devices_model="SM-M526BR"' \
--form 'latitude="-7.7773554"' \
--form 'longitude="110.3836176"' \
--form 'flag_qr_code="Y"' \
--form 'flag_radius="Y"' \
--form 'flag_suhu_tubuh="N"'