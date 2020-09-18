var array = [
  {
    id: 1,
    url: 'https://static2.yan.vn/YanNews/2167221/201810/20225687_1792599400765091_5368175985709547520_n-d0a5361a.jpg',
    name: 'Husky Shibirian',
    giongCho: 'HUSKY',
    mauLong: 'Xám trắng',
    mauMat: 'Xanh dương',
    tuoi: '4 tháng',
    gia: '5.400.000đ',
    soLuong: 6,
    trangThai: 'Còn hàng'
  },
  {
    id: 2,
    url: 'https://images.kienthuc.net.vn/zoom/800/uploaded/ctvcongdongtre/2020_05_10/2/ra-ngoai-la-hot-girl-dinh-dam-ve-nha-linh-ka-van-phai-chiu-kiep-con-sen-hinh-5.jpg',
    name: 'Corgi Der',
    giongCho: 'CORGI',
    mauLong: 'Vàng',
    mauMat: 'Đen',
    tuoi: '3 tháng',
    gia: '4.800.000 đ',
    soLuong: 5,
    trangThai: 'Còn hàng'
  },
  {
    id: 3,
    url: 'https://www.chotot.com/kinhnghiem/wp-content/uploads/2019/10/meo-munchkin-21-1024x856.jpg',
    name: 'Munchkin chân ngắn',
    giongCho: 'MUNCHKIN',
    mauLong: 'Vàng trắng',
    mauMat: 'Đen',
    tuoi: '4 tháng',
    gia: '12.000.000 đ',
    soLuong: 3,
    trangThai: 'Còn hàng'
  }
]

$( document ).ready(function() {
  render(array);
});

$('#modelMessage').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var name = button.data('name');
  var id = button.data('id');
  
  var modal = $(this);
  modal.find('.modal-title').text('Bạn vừa ngừng kinh doanh ' + name);
  modal.find('.modal-body').text('Id của ' + name + ' mà bạn vừa ngừng kinh doanh là: ' + id);
});

function render(arr) {
  var tablePet = $('#table-pet');
  var newarr = arr.map(objectToHTML);
  newarr = newarr.join('');
  tablePet.html(newarr);
}

function objectToHTML(item) {
  var id = '<th id="idThuCung" scope="row" class="td-center" style="padding-top: 2.5%;">' + item.id +'</th>';
  var img = '<td><img class="img-fluid" src="' + item.url +'" alt="" style="max-width: 70px;max-height: 70px;"></td>';
  var name = '<td id="tenThuCung" class="td-center" style="padding-top: 2.5%;"><a href="javascript:"onclick="showFormUpdate(true)">'+ item.name +'</a></td>';
  var x ='<td class="td-center" style="padding-top: 2.5%;">';
  var y = '</td>';
  var body = x+ item.giongCho +y + x+ item.mauLong +y + x+ item.mauMat +y + x+ item.tuoi +y + x+ item.gia +y + x+ item.soLuong +y + x+ item.trangThai +y;
  var button = '<td class="td-center" style="padding-top: 2%;">' + 
  '<button id="btn' + item.id + '" type="button" class="btn btn-custon-rounded-three btn-danger"' +
  'data-toggle="modal" data-target="#modelMessage" data-name="' + item.name + '" data-id="' + item.id + '">' +
  '<i class="fas fa-ban"></i><span> Ngừng kinh doanh</span></button></td>';
  return '<tr>' + id + img + name + body + button + '</tr>';
}
