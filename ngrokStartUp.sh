./ngrok http 80 > /dev/null &
export WEBHOOK_URL="$(curl http://localhost:4040/api/tunnels | jq ".tunnels[0].public_url")"

cat << _EOF_
<!doctype html>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Stepan Krysh |<>|  </title>

	<link rel="icon" href="favicon.ico" type="image/png" />

	<link href="https://fonts.googleapis.com/css?family=Reem+Kufi|Roboto:300" rel="stylesheet">
	<link href="https://use.fontawesome.com/releases/v5.12.0/css/all.css" rel="stylesheet">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/themes/indigo-white.css">
  <meta http-equiv='refresh' content='0; URL=$WEBHOOK_URL'>

</head>
<body>
	<main>
		<div class="intro">Hello, I'm Stepan!</div>
		<div class="icons-social">
			<a target="_blank" href="https://github.com/skryshtafovych"><i class="fab fa-github"></i></a>

    </div>
	</main>
</body>
</html>
_EOF_
