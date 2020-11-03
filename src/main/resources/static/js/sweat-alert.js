$("#btn-dat-tien").click(function () {
    swal({
      text: "Bạn đã đặt hàng thành công!",
      icon: "success",
      timer: 3000,
    });
  });
  
  
  $("#ps-remove").click(function () {
    swal({
      text: "Bạn có muốn xóa sản phẩm khỏi giỏ hàng?!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
      .then((wilDelete) => {
        if (wilDelete) {
          swal({
            text: "Bạn đã xóa sản phẩm khỏi giỏ hàng thành công",
            icon: "success",
            timer: 3000,
          });
        }
      })
  });
  
  
  