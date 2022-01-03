
<title>Edit Contact</title>
</head>
<?php
    include 'common.php';
    include './scripts/common.php';
    $id=$_GET["id"];
    $query="select * from users where id='$id'";
    $result=mysqli_query($con,$query)or die(mysqli_error($con));
