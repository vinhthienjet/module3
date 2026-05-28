-- tao bang ss2 --
create database if not exists ss2a;
use ss2a;

-- tao bang phieu xuat -- 
create table phieu_xuat(
so_phieu_xuat int primary key auto_increment ,
ngayxuat date
);

-- tao bang vat tu --
create table vat_tu(
ma_vat_tu int primary key auto_increment ,
ten_vat_tu varchar(100)
);

-- tao bang phieu nhap --
create table phieu_nhap(
so_phieu_nhap int primary key auto_increment,
ngay_nhap date
);

-- tao bang don dat hang --
create table don_dat_hang(
so_don_hang int primary key auto_increment ,
ngay_dat_hang date
);

-- tao bang nha cung cap --
create table nha_cung_cap(
ma_nha_cung_cap int primary key auto_increment,
ten_nha_cung_cap varchar(50),
dia_chi varchar(100),
sdt varchar(10)
);

-- bang chi tiet phieu xuat tb phieu_xuat n-n tb vat_tu --
create table chi_tiet_phieu_xuat(
don_gia_xuat double,
so_luong_xuat int,
ma_phieu_xuat int,
ma_vat_tu int ,

primary key(ma_phieu_xuat,ma_vat_tu),

FOREIGN KEY (ma_phieu_xuat) references phieu_xuat(so_phieu_xuat),
FOREIGN KEY (ma_vat_tu) references vat_tu(ma_vat_tu)


);

-- bang chi tiet phieu nhap tb phieu_nhap n-n tb vat_tu --
create table chi_tiet_phieu_nhap(
don_gia_nhap double,
so_luong_nhap int,
ma_phieu_nhap int,
ma_vat_tu int,
primary key(ma_phieu_nhap,ma_vat_tu),

FOREIGN KEY (ma_phieu_nhap) references phieu_nhap(so_phieu_nhap),
FOREIGN KEY(ma_vat_tu) references vat_tu(ma_vat_tu)

);

-- bang chi tiet don hang tb don_hang n-n tb vat_tu --
create table chi_tiet_dat_hang(
ma_don_hang int primary key auto_increment,
ma_vat_tu int,
so_luong_vat_tu int,

FOREIGN KEY (ma_don_hang) references don_dat_hang(so_don_hang),
FOREIGN KEY(ma_vat_tu) references vat_tu(ma_vat_tu)

);

-- bang cung_cap tb don_hang n-n tb nha_cung_cap --
create table cung_cap(
ma_nha_cung_cap int,
ma_don_hang int,

primary key(ma_nha_cung_cap,ma_don_hang),

FOREIGN KEY (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap),
FOREIGN KEY(ma_don_hang) references don_dat_hang(so_don_hang)

);
