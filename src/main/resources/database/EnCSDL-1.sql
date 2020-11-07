	drop database PetMark2; 
	create database PetMark2;
	use PetMark2;

	create table Role (
	id varchar(20) not null primary key,
	name nvarchar(50) not null
	);

	create table Account (
	username varchar(20) NOT NULL primary key,
	password nvarchar(200) NOT NULL,
	fullName nvarchar(50) NULL,
	gender boolean NULL,
	email varchar(50) NULL,
	phone varchar(10) NULL,
	RoleID varchar(20) NOT NULL,
	isDeactivate bit NOT NULL,
	imagePath varchar(500) NULL,
	address varchar(500) NULL,
	foreign key (RoleID) references Role(id)
	);

	create table Species(
	id int not null auto_increment primary key,
	name nvarchar(50) not null,
	information nvarchar(900) null,
	isdiscontinued boolean not null default false
	);

	create table Pet(
	id int not null auto_increment primary key,
	speciesId int not null,
	petname nvarchar(25) not null,
	age int not null,
	price float not null,
	deposit float not null,
	amount int not null,
	created_at date not null default (CURRENT_TIMESTAMP),
	description nvarchar(900) null,
	status nvarchar(20) not null,
	foreign key (speciesId) references Species(id)
	);

	create table ImgPet(
	id int not null auto_increment primary key,
	petId int not null,
	imgAvartar nvarchar(255) not null,
	img1 nvarchar(255)  null,
	img2 nvarchar(255)  null,
	img3 nvarchar(255)  null,
	foreign key (petId) references Pet(id)
	);

	create table ColorPet(
	id int not null auto_increment primary key,
	petId int not null,
	fullColor nvarchar(20) not null,
	eyeColor nvarchar(20) not null,
	foreign key (petId) references Pet(id)
	);

	create table CommentPet(
	id int not null auto_increment primary key,
	petId int not null,
	username varchar(25) not null,
	content nvarchar(255) not null,
	dateComment date null default(CURRENT_TIMESTAMP),

	foreign key (petId) references Pet(id),
	foreign key (username) references Account(username)
	);

	create table Category(
	id int not null auto_increment primary key,
	name nvarchar(50) not null,
	description nvarchar(255) null,
	isdiscontinued boolean not null default false
	);

	create table Accessories(
	id int not null auto_increment primary key,
	categoryID int not null,
	name nvarchar(25) not null,
	price float not null,
	amount int not null,
	created_at date not null default(CURRENT_TIMESTAMP),
	description nvarchar(900) null,
	status nvarchar(25) not null,

	foreign key (categoryID) references Category(id)
	);

	create table ImgAccessories(
	id int not null auto_increment primary key,
	accessoriesId int not null,
	imagePath nvarchar(255) not null,
	img1  nvarchar(255)  null,
    img2  nvarchar(255)  null,
    img3  nvarchar(255)  null,
	foreign key (AccessoriesId) references Accessories(id)
	);

	create table SizeAccessories(
	id int not null auto_increment primary key,
	accessoriesId int not null,
	sizeName nvarchar(20) not null,

	foreign key (AccessoriesId) references Accessories(id)
	);

	create table ColorAccessories(
	id int not null auto_increment primary key,
	accessoriesId int not null,
	colorAccessories nvarchar(20) not null,

	foreign key (AccessoriesId) references Accessories(id)
	);

	create table CommentAccessories(
	id int not null auto_increment primary key,
	accessoriesId int not null,
	username varchar(25) not null,
	content nvarchar(255) not null,
	dateComment date null default(CURRENT_TIMESTAMP),

	foreign key (AccessoriesId) references Accessories(id),
	foreign key (username) references Account(username)
	);

	create table CardItemAccessories(
	id int not null auto_increment primary key,
	accessoriesId int not null,
	username varchar(25) not null,
    sizeId int not null,
    colorId int not null,
	amount int not null,
	created_at date null default(CURRENT_TIMESTAMP),

	foreign key (accessoriesId) references Accessories(id),
	foreign key (username) references Account(username),
    foreign key (sizeId) references SizeAccessories(id),
    foreign key (colorId) references ColorAccessories(id)
	);

	create table OrderrWeb(
	id int not null auto_increment primary key,
	username varchar(25) not null,
	created_at date not null default(CURRENT_TIMESTAMP),
	consignee nvarchar(100) not null,
	consignee_phone varchar(20) not null,
	delivery_address nvarchar(200) not null,
	delivery_status nvarchar(200) not null,
	payment_method nvarchar(50) not null,
	payment_status varchar(50) not null,
	sent_mail nvarchar(100) not null,
	total_amount float not null,

	foreign key (username) references Account(username)
	);

	create table OrderrWebDetail(
	id int not null auto_increment primary key,
	orderrWebId int not null,
	accessoriesId int not null,
    sizeId int not null,
    colorId int not null,
	amount int not null,
	created_at date not null default(CURRENT_TIMESTAMP),
	total_amount float not null,

	foreign key (AccessoriesId) references Accessories(id),
	foreign key (orderrWebId) references OrderrWeb(id),
    foreign key (sizeId) references SizeAccessories(id),
    foreign key (colorId) references ColorAccessories(id)
	);
	
    create table delivery_log(
    id int not null auto_increment primary key,
	order_web_id int not null,
    delivery_status nvarchar(50) not null,
    foreign key (order_web_id) references OrderrWeb(id)
    );
    
	create table OrderrApp(
	id int not null auto_increment primary key,
	username varchar(25) not null,
	created_at date not null default(CURRENT_TIMESTAMP),
	consignee nvarchar(25) not null,
	consignee_phone varchar(13) not null,
	delivery_address nvarchar(200) not null,
	delivery_status nvarchar(200) not null,
	payment_method nvarchar(50) not null,
	payment_status varchar(50) not null,
	sent_mail nvarchar(100) not null,
	total_amount float not null,

	foreign key (username) references Account(username)
	);

	create table OrderrAppDetail(
	id int not null auto_increment primary key,
	orderrAppId int not null,
	accessoriesId int not null,
    sizeId int not null,
    colorId int not null,
	amount int not null,
	created_at date null default(CURRENT_TIMESTAMP),
	total_amount float not null,

	foreign key (AccessoriesId) references Accessories(id),
	foreign key (orderrAppId) references OrderrApp(id),
    foreign key (sizeId) references SizeAccessories(id),
    foreign key (colorId) references ColorAccessories(id)
	);


	create table Deposit(
	id int not null auto_increment primary key,
	username varchar(25) not null,
	petId int not null,
    colorId int not null,
	created_at datetime not null default(CURRENT_TIMESTAMP),
	total_amount float not null,
	status boolean not null default(true),
	foreign key (petId) references Pet(id),
	foreign key (username) references Account(username),
    foreign key (colorId) references ColorPet(id)
	);
    
    create table Blog(
    id int not null auto_increment primary key,
    username varchar(25) not null,
    title nvarchar(255) not null,
    img nvarchar(255) not null,
    content nvarchar(255) not null,
    date_submitted date not null default(current_timestamp),
    status boolean not null,
    foreign key (username) references account(username)
    );
    
    create table LikeBlog(
    id int not null auto_increment primary key,
    blog_id int not null,
    username varchar(25) not null,
    foreign key (blog_id) references blog(id),
	foreign key (username) references account(username)
    );

	INSERT Role (id, name) VALUES (N'ROLE_ADMIN', N'Admin');
	INSERT Role (id, name) VALUES (N'ROLE_MEMBER', N'Member');
	INSERT Role (id, name) VALUES (N'ROLE_STAFF', N'Staff');


    INSERT Account (username, password, fullName, gender, email, phone, RoleID, isDeactivate, imagePath, address) VALUES (N'admin01', N'$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', N'Dương Văn Quang
	', false, N'adminEmail@gmail.com', N'0999999990', N'ROLE_ADMIN', 0, N'Image/user/vip01.svg', N'Hà Nội');
    INSERT Account (username, password, fullName, gender, email, phone, RoleID, isDeactivate, imagePath, address) VALUES (N'member01', N'$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', N'Lê Đức Quyền 
	', false, N'memberEmail1@gmail.com', N'0999999991', N'ROLE_MEMBER', 0, N'Image/user/vip01.svg', N'Hà Nội');
	INSERT Account (username, password, fullName, gender, email, phone, RoleID, isDeactivate, imagePath, address) VALUES (N'member02', N'$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', N'Nguyễn Quang Huy
	', false, N'memberEmail2@gmail.com', N'0999999992', N'ROLE_MEMBER', 0, N'Image/user/vip01.svg', N'Hà Nội');
	INSERT Account (username, password, fullName, gender, email, phone, RoleID, isDeactivate, imagePath, address) VALUES (N'member03', N'$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', N'Nguyễn Duy Long',
	false, N'memberEmail3@gmail.com', N'0999999993', N'ROLE_MEMBER', 0, N'Image/user/vip01.svg', N'Hà Nội');
    INSERT Account (username, password, fullName, gender, email, phone, RoleID, isDeactivate, imagePath, address) VALUES (N'staff01', N'$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', N'Dương Văn Quang',
    false, N'staffEmail@gmail.com', N'0999999999', N'ROLE_STAFF', 0, N'Image/user/vip01.svg', N'Hà Nội');

	INSERT Species (name , information) values (N'Husky Sibir',N'Là giống chó kéo xe thuộc dòng Spitz, có nguồn gốc từ Đông Bắc Sibir, Nga.Chó Husky có hai lớp lông dày, tai dựng hình tam giác và thường có những điểm nhận dạng khác nhau trên lông.');
	INSERT Species (name , information) values (N'Shiba Inu',N'Shiba Inu là loại chó nhỏ nhất trong sáu giống chó nguyên thủy và riêng biệt đến từ Nhật Bản. Chúng là một giống chó nhỏ, nhanh nhẹn và thích hợp với địa hình miền núi, Shiba Inu ban đầu được nuôi để săn bắt. Nó gần giống nhưng nhỏ hơn so với giống chó Akita Inu. Đây là một trong số ít giống chó cổ xưa vẫn còn tồn tại cho đến ngày nay. Shiba là một trong sáu giống chó điển hình của Nhật Bản, cũng như Hokkaido, Kishu, Shikoku, Kai và Akita. Trong những giống chó này, Shiba là nhỏ nhất về thể chất.');
	INSERT Species (name , information) values (N'Corgi',N'Chó Corgi là giống chó chăn gia súc có nguồn gốc từ Pembrokeshire, xứ Wales. Nó là một trong hai giống được biết đến với tên gọi chung là Chó Corgi xứ Wales. Giống chó còn lại là giống Chó Corgi Cardigan Wales và cả hai đều có tổ tiên là giống chó đuôi cuộn kiểu Bắc Cực (ví dụ bao gồm cả giống chó Husky Siberia).');
	INSERT Species (name , information) values (N'Mèo Anh lông ngắn',N'Mèo lông ngắn Anh là phiên bản nhân giống có chọn lọc của mèo nhà Anh truyền thống với những đặc điểm như thân hình mũm mĩm, lông ngắn và dày cùng với khuôn mặt to. Màu sắc phổ biến nhất là màu xám xanh với mắt màu vàng đồng, nhưng ngoài ra vẫn còn nhiều màu sắc và hoa văn khác nhau.');
	
	INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Husky ABE',1,1,8000000,800000,10,N'Chú chó này là giống đực, nặng 10kg và mới thay lông xong. Husky ABE đã được tiêm vacxin phòng 6 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm và Leptospira.
    Ngoài ra chú chó này đã được tiêm phòng dại vào ngày 25/10/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt, các loại thịt sống và rau củ, không bị tiêu chảy. Chưa phối giống lần nào.
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
	INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Husky Sena',1,2,8500000,850000,15,N'Chú chó này là giống cái, nặng 6,5 kg và mới thay lông xong. Husky Sena đã được tiêm vacxin phòng 6 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm và Leptospira.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 05/09/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Đã phối giống 2 lần.
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
	INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Husky Kitz',1,4,10500000,1050000,6,N'Chú chó này là giống cái, nặng 7,5 kg và mới thay lông xong. Husky Kitz đã được tiêm vacxin phòng 6 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm và Leptospira.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 11/11/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Đã có lứa con F2 đầu tiên.
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Corgi Clear',3,3,15500000,1550000,20,N'Chú chó này là giống đực, nặng 8 kg và chưa thay lông. Corgi Clear đã được tiêm vacxin phòng 6 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm và Leptospira.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Đã có lứa con F2 đầu tiên.
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Shiba Petland',2,2,20000000,2000000,5,N'Chú chó này là giống đực, nặng 7 kg và chưa thay lông. Shiba Petland đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào.
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Shiba ABC',2,3,21000000,2100000,5,N'Chú chó này là giống đực, nặng 7 kg và chưa thay lông. Shiba ABC đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Corgi Cadigan',3,2,12000000,1200000,10,N'Chú chó này là giống cái, nặng 9 kg và đã thay lông 2 lần. Corgi Cadigan đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Corgi 0175',3,5,15000000,1500000,10,N'Chú chó này là giống cái, nặng 8 kg và chưa thay lông. Corgi 0175 đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Corgi 0120',3,3,10000000,1000000,10,N'Chú chó này là giống cái, nặng 7 kg và chưa thay lông. Corgi 0120 đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Shiba 7321',2,5,17500000,1750000,5,N'Chú chó này là giống đực, nặng 7 kg và đã thay lông 2 lần. Shiba 7321 đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Corgi 6636',3,5,10500000,1050000,5,N'Chú chó này là giống đực, nặng 7 kg và chưa thay lông. Corgi 6636 đã được tiêm vacxin phòng 7 loại bệnh: Care virus, Parvovirus, viêm gan truyền nhiễm, ho cũi chó, phổi cúm, Leptospira và Corona.
    Ngoài ra chú chó này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Mèo Tom',4,3,6700000,670000,5,N'Bé mèo này là giới tính đực, nặng 4 kg và đã thay lông 1 lần. Mèo Tom đã được tiêm vacxin phòng 3 loại bệnh: giảm bạch cầu, viêm mũi – khí quản truyền nhiễm, Herpervirus.
    Ngoài ra bé mèo này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt,pate và rau củ, không bị tiêu chảy. Đã phối giống 1 lần. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Mèo Béo',4,3,6700000,670000,5,N'Bé mèo này là giới tính đực, nặng 7 kg và đã thay lông 1 lần. Mèo Béo đã được tiêm vacxin phòng 3 loại bệnh: giảm bạch cầu, viêm mũi – khí quản truyền nhiễm, Herpervirus.
    Ngoài ra bé mèo này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt,pate và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Mèo Dưa hấu',4,2,5000000,500000,5,N'Bé mèo này là giới tính cái, nặng 3,5 kg và chưa thay lông. Mèo Dưa hấu đã được tiêm vacxin phòng 3 loại bệnh: giảm bạch cầu, viêm mũi – khí quản truyền nhiễm, Herpervirus.
    Ngoài ra bé mèo này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt,pate và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Mèo Paylak',4,2,5500000,550000,5,N'Bé mèo này là giới tính đực, nặng 3,5 kg và chưa thay lông. Mèo Paylak đã được tiêm vacxin phòng 3 loại bệnh: giảm bạch cầu, viêm mũi – khí quản truyền nhiễm, Herpervirus.
    Ngoài ra bé mèo này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt,pate và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
     INSERT into Pet (petname,speciesId,age,price,deposit,amount,description,status) VALUES 
	(N'Mèo 8 tháng 3',4,4,5500000,550000,5,N'Bé mèo này là giới tính cái, nặng 3,5 kg và chưa thay lông. Mèo 8 tháng 3 đã được tiêm vacxin phòng 3 loại bệnh: giảm bạch cầu, viêm mũi – khí quản truyền nhiễm, Herpervirus.
    Ngoài ra bé mèo này đã được tiêm phòng dại ngày 08/07/2020. Bé hiện tại khỏe mạnh, hiếu động, không bị các bệnh ngoài da như nấm, ghẻ, rận,...Có thể ăn được cả cơm, hạt,pate và rau củ, không bị tiêu chảy. Chưa phối giống lần nào. 
	 Được gắn Microchip và giấy chứng nhận xuất xứ, thuần chủng',N'Còn hàng');
    
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (01,N'Image/Pet/pet01.jpg',N'Image/Pet/pet02.jpg',N'Image/Pet/pet03.jpg',N'Image/Pet/pet04.jpg');
	INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (02,N'Image/Pet/pet05.jpg',N'Image/Pet/pet06.jpg',N'Image/Pet/pet07.jpg',N'Image/Pet/pet08.jpg');
	INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (03,N'Image/Pet/pet09.jpg',N'Image/Pet/pet10.jpg',N'Image/Pet/pet11.jpg',N'Image/Pet/pet12.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (04,N'Image/Pet/pet13.jpg',N'Image/Pet/pet14.jpg',N'Image/Pet/pet15.jpg',N'Image/Pet/pet16.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (05,N'Image/Pet/pet17.jpg',N'Image/Pet/pet18.jpg',N'Image/Pet/pet19.jpg',N'Image/Pet/pet20.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (06,N'Image/Pet/pet21.jpg',N'Image/Pet/pet22.jpg',N'Image/Pet/pet23.jpg',N'Image/Pet/pet24.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (07,N'Image/Pet/pet25.jpg',N'Image/Pet/pet26.jpg',N'Image/Pet/pet27.jpg',N'Image/Pet/pet28.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (08,N'Image/Pet/pet29.jpg',N'Image/Pet/pet30.jpg',N'Image/Pet/pet31.jpg',N'Image/Pet/pet32.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (09,N'Image/Pet/pet33.jpg',N'Image/Pet/pet34.jpg',N'Image/Pet/pet35.jpg',N'Image/Pet/pet36.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (10,N'Image/Pet/pet37.jpg',N'Image/Pet/pet38.jpg',N'Image/Pet/pet39.jpg',N'Image/Pet/pet40.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (11,N'Image/Pet/pet41.jpg',N'Image/Pet/pet42.jpg',N'Image/Pet/pet43.jpg',N'Image/Pet/pet44.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (12,N'Image/Pet/pet45.jpg',N'Image/Pet/pet46.jpg',N'Image/Pet/pet47.jpg',N'Image/Pet/pet48.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (13,N'Image/Pet/pet49.jpg',N'Image/Pet/pet50.jpg',N'Image/Pet/pet51.jpg',N'Image/Pet/pet52.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (14,N'Image/Pet/pet53.jpg',N'Image/Pet/pet54.jpg',N'Image/Pet/pet55.jpg',N'Image/Pet/pet56.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (15,N'Image/Pet/pet57.jpg',N'Image/Pet/pet58.jpg',N'Image/Pet/pet59.jpg',N'Image/Pet/pet60.jpg');
    INSERT imgPet (petId, imgAvartar,img1 ,img2 ,img3 ) VALUES (16,N'Image/Pet/pet61.jpg',N'Image/Pet/pet62.jpg',N'Image/Pet/pet63.jpg',N'Image/Pet/pet64.jpg');
    
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (01,N'Đen Trắng',N'Xanh');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (02,N'Vàng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (03,N'Vàng Trắng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (04,N'Xám Xanh',N'Xanh');
    INSERT colorPet (petId, fullColor,eyeColor) VALUES (05,N'Đen Trắng',N'Xanh');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (06,N'Vàng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (07,N'Vàng Trắng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (08,N'Xám Xanh',N'Xanh');
    INSERT colorPet (petId, fullColor,eyeColor) VALUES (09,N'Đen Trắng',N'Xanh');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (10,N'Vàng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (11,N'Vàng Trắng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (12,N'Xám Xanh',N'Xanh');
    INSERT colorPet (petId, fullColor,eyeColor) VALUES (13,N'Đen Trắng',N'Xanh');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (14,N'Vàng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (15,N'Vàng Trắng',N'Đen');
	INSERT colorPet (petId, fullColor,eyeColor) VALUES (16,N'Xám Xanh',N'Xanh');
    
INSERT Category (name, description) VALUES (N'Chuồng',N'Bền chắc, sang trọng và đảm bảo chất lượng');
INSERT Category (name, description) VALUES (N'Áo',N'Bền đẹp, sang trọng với những kiểu dáng mới mẻ, bắt mắt.');
INSERT Category (name, description) VALUES (N'Vòng cổ, khăn quàng',N'Bền chắc, phù hợp với nhiều giống loại thú cưng');


INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 01',800000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 110 x 80 x 100 phù hợp với những con thú cưng có chiều cao cân nặng ở mức trung bình. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 02',700000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 100 x 80 x 100 phù hợp với những con thú cưng có chiều cao cân nặng ở mức trung bình. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 03',600000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 80 x 50 x 80 phù hợp với những con thú cưng có chiều cao cân nặng ở mức bé. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 04',500000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 50 x 50 x 50 phù hợp với những con thú cưng có chiều cao cân nặng ở mức bé(đặc biệt là mèo).Các mối hàn được hàn bền chắc.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 05',900000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 120 x 80 x 100 phù hợp với những con thú cưng có chiều cao cân nặng ở mức lớn. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 06',950000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 150 x 80 x 120 phù hợp với những con thú cưng có chiều cao cân nặng ở mức lớn. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 07',850000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn với màu hài hòa sang trọng
. Kích thước chuồng 150 x 80 x 120 phù hợp với những con thú cưng có chiều cao cân nặng ở mức lớn. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 08',750000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 50 x 50 x 60 phù hợp với những con thú cưng có chiều cao cân nặng ở mức nhỏ ví dụ như Mèo, Fox sóc, Pug. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 09',640000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 120 x 80 x 120 phù hợp với những con thú cưng có chiều cao cân nặng ở mức lớn. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (01,N'Chuồng chó 10',1230000,80,N'Chuồng được làm từ thép không gỉ và sơn 1 lớp sơn tĩnh điện
. Kích thước chuồng 150 x 80 x 120 phù hợp với những con thú cưng có chiều cao cân nặng ở mức lớn. Dễ dàng tháo lắp di chuyển.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 01',120000,80,N'Được làm từ vải cotton nên với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 02',80000,80,N'Được làm từ vải polyester nên với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 03',80000,80,N'Được làm từ vải polyester. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 04',70000,80,N'Được làm từ vải cotton. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 05',60000,80,N'Được làm từ vải polyester. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 06',75000,80,N'Được làm từ vải polyester. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 07',55000,80,N'Được làm từ vải cotton. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 08',95000,80,N'Được làm từ vải polyester. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 09',99000,80,N'Được làm từ vải cotton. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (02,N'Áo 10',81000,80,N'Được làm từ vải polyester. Với thời tiết mùa hè thì thoáng mát, dễ dàng cho thú cưng của bạn vẫn động. 
Đối với mùa đông thì giữ nhiệt tốt giúp cho thân thể của thú cưng không bị lạnh. Với những hình ảnh hoạt hình bắt mắt được in lên áo. Và có đủ các size. Dễ dàng mặc lên người thú cưng',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Vòng cỏ 01',200000,80,N'Bền chắc có thể tùy chỉnh để vừa với kích thước cổ của thú cưng. Chiều dài dây cầm có thể thay đổi tùy chỉnh
tối đa 3m. Màu sắc bắt mắt kiể dáng sang trọng.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Khăn quàng 01',109000,80,N'Kiểu cách sang trọng, màu sắc bắt mắt. Những hình ảnh hoạt hình vui nhộn
 được in bền chắc trên khăn. Kích thức 40x40 phù hợp với thú cưng size nhỏ.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Vòng cỏ 02',167000,80,N'Bền chắc có thể tùy chỉnh để vừa với kích thước cổ của thú cưng. Chiều dài dây cầm có thể thay đổi tùy chỉnh
tối đa 3m. Màu sắc bắt mắt kiể dáng sang trọng.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Khăn quàng 02',125000,80,N'Kiểu cách sang trọng, màu sắc bắt mắt. Những hình ảnh hoạt hình vui nhộn
 được in bền chắc trên khăn. Kích thức 40x40 phù hợp với thú cưng size nhỏ.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Vòng cỏ 03',115000,80,N'Bền chắc có thể tùy chỉnh để vừa với kích thước cổ của thú cưng. Chiều dài dây cầm có thể thay đổi tùy chỉnh
tối đa 3m. Màu sắc bắt mắt kiể dáng sang trọng.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Vòng cỏ 04',90000,80,N'Bền chắc có thể tùy chỉnh để vừa với kích thước cổ của thú cưng. Chiều dài dây cầm có thể thay đổi tùy chỉnh
tối đa 3m. Màu sắc bắt mắt kiể dáng sang trọng.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Khăn quàng 03',1000000,80,N'Kiểu cách sang trọng, màu sắc bắt mắt. Những hình ảnh hoạt hình vui nhộn
 được in bền chắc trên khăn. Kích thức 40x40 phù hợp với thú cưng size nhỏ.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Vòng cỏ 05',250000,80,N'Bền chắc có thể tùy chỉnh để vừa với kích thước cổ của thú cưng. Chiều dài dây cầm có thể thay đổi tùy chỉnh
tối đa 3m. Màu sắc bắt mắt kiể dáng sang trọng.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Khăn quàng 04',110000,80,N'Kiểu cách sang trọng, màu sắc bắt mắt. Những hình ảnh hoạt hình vui nhộn
 được in bền chắc trên khăn. Kích thức 70x60 phù hợp với thú cưng size lớn.',N'Còn hàng');
INSERT Accessories (categoryID, name,price,amount,description,status) VALUES (03,N'Khăn quàng 05',190000,80,N'Kiểu cách sang trọng, màu sắc bắt mắt. Những hình ảnh hoạt hình vui nhộn
 được in bền chắc trên khăn. Kích thức 50x50 phù hợp với thú cưng size vừa.',N'Còn hàng');
 
INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (01,N'Image/Accessories/accessories01.jpg',N'Image/Accessories/accessories02.jpg',N'Image/Accessories/accessories03.jpg',N'Image/Accessories/accessories04.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (02,N'Image/Accessories/accessories05.jpg',N'Image/Accessories/accessories06.jpg',N'Image/Accessories/accessories07.jpg',N'Image/Accessories/accessories08.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (03,N'Image/Accessories/accessories09.jpg',N'Image/Accessories/accessories10.jpg',N'Image/Accessories/accessories11.jpg',N'Image/Accessories/accessories12.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (04,N'Image/Accessories/accessories13.jpg',N'Image/Accessories/accessories14.jpg',N'Image/Accessories/accessories15.jpg',N'Image/Accessories/accessories16.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (05,N'Image/Accessories/accessories17.jpg',N'Image/Accessories/accessories18.jpg',N'Image/Accessories/accessories19.jpg',N'Image/Accessories/accessories20.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (06,N'Image/Accessories/accessories21.jpg',N'Image/Accessories/accessories22.jpg',N'Image/Accessories/accessories23.jpg',N'Image/Accessories/accessories24.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (07,N'Image/Accessories/accessories25.jpg',N'Image/Accessories/accessories26.jpg',N'Image/Accessories/accessories27.jpg',N'Image/Accessories/accessories28.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (08,N'Image/Accessories/accessories29.jpg',N'Image/Accessories/accessories30.jpg',N'Image/Accessories/accessories31.jpg',N'Image/Accessories/accessories32.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (09,N'Image/Accessories/accessories33.jpg',N'Image/Accessories/accessories34.jpg',N'Image/Accessories/accessories35.jpg',N'Image/Accessories/accessories36.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (10,N'Image/Accessories/accessories37.jpg',N'Image/Accessories/accessories38.jpg',N'Image/Accessories/accessories39.jpg',N'Image/Accessories/accessories40.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (11,N'Image/Accessories/accessories41.jpg',N'Image/Accessories/accessories42.jpg',N'Image/Accessories/accessories43.jpg',N'Image/Accessories/accessories44.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (12,N'Image/Accessories/accessories45.jpg',N'Image/Accessories/accessories46.jpg',N'Image/Accessories/accessories47.jpg',N'Image/Accessories/accessories48.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (13,N'Image/Accessories/accessories49.jpg',N'Image/Accessories/accessories50.jpg',N'Image/Accessories/accessories51.jpg',N'Image/Accessories/accessories52.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (14,N'Image/Accessories/accessories53.jpg',N'Image/Accessories/accessories54.jpg',N'Image/Accessories/accessories55.jpg',N'Image/Accessories/accessories56.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (15,N'Image/Accessories/accessories57.jpg',N'Image/Accessories/accessories58.jpg',N'Image/Accessories/accessories59.jpg',N'Image/Accessories/accessories60.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (16,N'Image/Accessories/accessories61.jpg',N'Image/Accessories/accessories62.jpg',N'Image/Accessories/accessories63.jpg',N'Image/Accessories/accessories64.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (17,N'Image/Accessories/accessories65.jpg',N'Image/Accessories/accessories66.jpg',N'Image/Accessories/accessories67.jpg',N'Image/Accessories/accessories68.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (18,N'Image/Accessories/accessories69.jpg',N'Image/Accessories/accessories70.jpg',N'Image/Accessories/accessories71.jpg',N'Image/Accessories/accessories72.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (19,N'Image/Accessories/accessories73.jpg',N'Image/Accessories/accessories74.jpg',N'Image/Accessories/accessories75.jpg',N'Image/Accessories/accessories76.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (20,N'Image/Accessories/accessories77.jpg',N'Image/Accessories/accessories78.jpg',N'Image/Accessories/accessories79.jpg',N'Image/Accessories/accessories80.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (21,N'Image/Accessories/accessories81.jpg',N'Image/Accessories/accessories82.jpg',N'Image/Accessories/accessories83.jpg',N'Image/Accessories/accessories84.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (22,N'Image/Accessories/accessories85.jpg',N'Image/Accessories/accessories86.jpg',N'Image/Accessories/accessories87.jpg',N'Image/Accessories/accessories88.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (23,N'Image/Accessories/accessories89.jpg',N'Image/Accessories/accessories90.jpg',N'Image/Accessories/accessories91.jpg',N'Image/Accessories/accessories92.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (24,N'Image/Accessories/accessories93.jpg',N'Image/Accessories/accessories9.jpg4',N'Image/Accessories/accessories95.jpg',N'Image/Accessories/accessories96.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (25,N'Image/Accessories/accessories97.jpg',N'Image/Accessories/accessories98.jpg',N'Image/Accessories/accessories99.jpg',N'Image/Accessories/accessories100.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (26,N'Image/Accessories/accessories101.jpg',N'Image/Accessories/accessories102.jpg',N'Image/Accessories/accessories103.jpg',N'Image/Accessories/accessories104.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (27,N'Image/Accessories/accessories105.jpg',N'Image/Accessories/accessories106.jpg',N'Image/Accessories/accessories107.jpg',N'Image/Accessories/accessories108.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (28,N'Image/Accessories/accessories109.jpg',N'Image/Accessories/accessories110.jpg',N'Image/Accessories/accessories111.jpg',N'Image/Accessories/accessories112.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (29,N'Image/Accessories/accessories113.jpg',N'Image/Accessories/accessories114.jpg',N'Image/Accessories/accessories115.jpg',N'Image/Accessories/accessories116.jpg');
 INSERT ImgAccessories (accessoriesId,imagePath,img1,img2,img3) VALUES (30,N'Image/Accessories/accessories117.jpg',N'Image/Accessories/accessories118.jpg',N'Image/Accessories/accessories119.jpg',N'Image/Accessories/accessories120.jpg');
 
INSERT SizeAccessories (accessoriesId,sizeName) VALUES (01,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (01,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (01,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (02,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (02,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (02,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (03,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (03,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (03,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (04,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (04,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (04,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (05,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (05,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (05,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (06,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (06,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (06,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (07,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (07,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (07,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (08,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (08,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (08,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (09,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (09,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (09,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (10,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (10,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (10,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (11,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (11,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (11,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (12,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (12,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (12,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (13,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (13,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (13,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (14,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (14,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (14,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (15,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (15,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (15,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (16,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (16,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (16,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (17,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (17,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (17,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (18,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (18,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (18,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (19,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (19,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (19,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (20,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (20,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (20,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (21,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (21,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (21,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (22,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (22,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (22,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (23,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (23,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (23,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (24,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (24,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (24,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (25,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (25,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (25,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (26,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (26,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (26,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (27,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (27,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (27,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (28,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (28,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (28,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (29,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (29,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (29,N'FreeSize');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (30,N'Size M');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (30,N'Size L');
 INSERT SizeAccessories (accessoriesId,sizeName) VALUES (30,N'FreeSize');
 
 
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (01,N'Trắng bóng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (02,N'Hồng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (03,N'Xám');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (04,N'Đen');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (05,N'Trắng đục');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (06,N'Xanh');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (07,N'Hồng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (08,N'Xanh');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (09,N'Hồng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (10,N'Xanh');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (11,N'Xanh');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (12,N'Đỏ');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (13,N'Hồng Vàng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (14,N'Nâu');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (15,N'Cam');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (16,N'Tím');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (17,N'Trắng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (18,N'Đen');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (19,N'Xanh Lá');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (20,N'Vàng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (21,N'Nâu');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (22,N'Đen');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (23,N'Đỏ');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (24,N'Hồng');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (25,N'Xanh lá');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (26,N'Xanh Dương');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (27,N'Đỏ');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (28,N'Cam');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (29,N'Nâu');
 INSERT ColorAccessories (accessoriesId,colorAccessories) VALUES (30,N'Vàng');
 
 Insert CardItemAccessories (accessoriesId,username,sizeId,colorId,amount) values(01,N'member01',01,01,2);
 Insert CardItemAccessories (accessoriesId,username,sizeId,colorId,amount) values(02,N'member01',02,02,1);
 Insert CardItemAccessories (accessoriesId,username,sizeId,colorId,amount) values(11,N'member01',11,11,3);
 Insert CardItemAccessories (accessoriesId,username,sizeId,colorId,amount) values(04,N'member02',04,04,5);
 Insert CardItemAccessories (accessoriesId,username,sizeId,colorId,amount) values(21,N'member03',21,21,4);
 
  insert orderrweb (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values
  (N'member01',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Chờ giao',N'SHIP COD',N'Chưa thanh toán',N'memberEmail1@gmail.com',1160000);
  insert orderrweb (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values
  (N'member01',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đã nhận',N'VNPAY',N'Đã thanh toán',N'memberEmail1@gmail.com',594000);
  insert orderrweb (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values
  (N'member02',N'Trần Ngọc Hải',0378037770,N'Số 3 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đang giao',N'SHIP COD',N'Chưa thanh toán',N'memberEmail2@gmail.com',550000);
  insert orderrweb (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values
  (N'member03',N'Nguyễn Phú Trọng',0378037770,N'Số 5 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đã nhận',N'VNPAY',N'Đã thanh toán',N'memberEmail3@gmail.com',540000);
 
  INSERT orderrwebdetail (orderrWebId,accessoriesId,sizeId,colorId,amount,total_amount) values (01,01,01,01,1,800000);
  INSERT orderrwebdetail (orderrWebId,accessoriesId,sizeId,colorId,amount,total_amount) values (01,11,11,11,3,360000);
  INSERT orderrwebdetail (orderrWebId,accessoriesId,sizeId,colorId,amount,total_amount) values (02,19,19,19,6,594000);
  INSERT orderrwebdetail (orderrWebId,accessoriesId,sizeId,colorId,amount,total_amount) values (03,29,29,29,5,550000);
  INSERT orderrwebdetail (orderrWebId,accessoriesId,sizeId,colorId,amount,total_amount) values (04,30,30,30,3,540000);
  
  INSERT  delivery_log (order_web_id,delivery_status) values (01,N'Chờ giao');
  INSERT  delivery_log (order_web_id,delivery_status) values (02,N'Đã nhận');
  INSERT  delivery_log (order_web_id,delivery_status) values (03,N'Đang giao');
  INSERT  delivery_log (order_web_id,delivery_status) values (04,N'Đã nhận');
  
  insert orderrapp (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values 
  (N'member01',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đã xét duyệt',N'SHIP COD',N'Chưa thanh toán',N'memberEmail1@gmail.com',1160000);
  insert orderrapp (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values 
  (N'member01',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Chưa xét duyệt',N'VNPAY',N'Đã thanh toán',N'memberEmail1@gmail.com',594000);
  insert orderrapp (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values 
  (N'member02',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đang giao 1',N'SHIP COD',N'Chưa thanh toán',N'memberEmail2@gmail.com',550000);
  insert orderrapp (username,consignee,consignee_phone,delivery_address,delivery_status,payment_method,payment_status,sent_mail,total_amount) values 
  (N'member03',N'Vũ Minh Hải',0378037770,N'Số 1 - Trịnh Văn Bô - Nam Từ Liêm - Hà Nội',N'Đã hủy',N'SHIP COD',N'Chưa thanh toán',N'memberEmail3@gmail.com',540000);
  
  INSERT orderrappdetail (orderrAppId,accessoriesId,sizeId,colorId,amount,total_amount) values (01,01,01,01,1,800000);
  INSERT orderrappdetail (orderrAppId,accessoriesId,sizeId,colorId,amount,total_amount) values (01,11,11,11,3,360000);
  INSERT orderrappdetail (orderrAppId,accessoriesId,sizeId,colorId,amount,total_amount) values (02,19,19,19,6,594000);
  INSERT orderrappdetail (orderrAppId,accessoriesId,sizeId,colorId,amount,total_amount) values (03,29,29,29,5,550000);
  INSERT orderrappdetail (orderrAppId,accessoriesId,sizeId,colorId,amount,total_amount) values (04,30,30,30,3,540000);
  
  insert deposit (username,petId,colorId,total_amount) values (N'member01',05,05,2000000);
  insert deposit (username,petId,colorId,total_amount) values (N'member01',03,03,1050000);
  insert deposit (username,petId,colorId,total_amount) values (N'member01',07,07,1200000);
  insert deposit (username,petId,colorId,total_amount) values (N'member02',09,09,1000000);
  insert deposit (username,petId,colorId,total_amount) values (N'member02',11,11,1050000);
  insert deposit (username,petId,colorId,total_amount) values (N'member03',16,16,550000);
  
  