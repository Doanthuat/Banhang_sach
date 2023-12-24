<?php
ob_start();
try {
    $conn = new PDO("mysql:host=localhost;dbname=sach;charset=utf8", "root", "");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Xử lý ngoại lệ tại đây (ví dụ: ghi log)
    error_log("Database connection failed: " . $e->getMessage());
    // Hiển thị thông báo lỗi cho người dùng (nếu cần)
    die("Lỗi kết nối cơ sở dữ liệu. Vui lòng thử lại sau.");
}

function selectAll($sql, $params = array())
{
    global $conn;
    $stmt = $conn->prepare($sql);
    $stmt->execute($params);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function exSQL($sql, $params = array())
{
    global $conn;
    $stmt = $conn->prepare($sql);
    return $stmt->execute($params);
}

function rowCount($sql, $params = array())
{
    global $conn;
    $stmt = $conn->prepare($sql);
    $stmt->execute($params);
    return $stmt->rowCount();
}

date_default_timezone_set('Asia/Ho_Chi_Minh');
$timestamp = time();
$today = date('d-m-Y H:i:s', $timestamp);

?>