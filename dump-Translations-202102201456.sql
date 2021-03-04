--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.2

-- Started on 2021-02-20 14:56:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 23449)
-- Name: translations; Type: TABLE; Schema: public; Owner: kuryeApp
--

CREATE TABLE public.translations (
    module character varying,
    identifier character varying,
    turkish character varying,
    english character varying
);


ALTER TABLE public.translations OWNER TO "kuryeApp";

--
-- TOC entry 2903 (class 0 OID 23449)
-- Dependencies: 202
-- Data for Name: translations; Type: TABLE DATA; Schema: public; Owner: kuryeApp
--

COPY public.translations (module, identifier, turkish, english) FROM stdin;
activate	activate.messages.error	<strong>Kullanıcınızın aktivasyon işlemi yapılamadı.</strong> Lütfen giriş sayfasından kaydolun.	User can not be verified , please sign up.
activate	activate.title	Aktivasyon	Activation 
activate	activate.messages.success	<strong>Kullanıcınızın aktivasyon işlemi tamamlandı.</strong> Lütfen 	User activation has been completed.
additionalService	kuryeApp.additionalService.statusoff	Pasif	Passive
additionalService	kuryeApp.additionalService.updated	{{ param }} no'lu Ek Hizmet Değiştirildi	An Additional Service is updated with identifier {{ param }}
additionalService	kuryeApp.additionalService.created	{{ param }} no'lu Ek Hizmet Oluşturuldu	A new Additional Service is created with identifier {{ param }}
additionalService	kuryeApp.additionalService.name	Ek Hizmet	Service
additionalService	kuryeApp.additionalService.companyType	Firma Türü	Company Type
additionalService	kuryeApp.additionalService.deleted	{{ param }} no'lu Ek Hizmet Silindi	An Additional Service is deleted with identifier {{ param }}
additionalService	kuryeApp.additionalService.home.notFound	Ek Hizmet Bulunamadı	Service can not be found
additionalService	kuryeApp.additionalService.delete.question	{{ id }} no'lu Ek Hizmeti Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Additional Service {{ id }}?
additionalService	kuryeApp.additionalService.home.title	Ek Hizmetler	Services
additionalService	kuryeApp.additionalService.home.createOrEditLabel	Ek Hizmet Oluştur veya Düzenle	Add/Delete Service
additionalService	kuryeApp.additionalService.status	Durum	Status
additionalService	kuryeApp.additionalService.statuson	Aktif	Active
additionalService	kuryeApp.additionalService.home.createLabel	Yeni Ek Hizmet Oluştur	Add new service
additionalService	kuryeApp.additionalService.detail.title	Ek Hizmet	Additional Service
audits	audits.table.header.data	Ekstra bilgi	More Information
audits	audits.table.header.status	Durum	Status
audits	audits.table.data.remoteAddress	Uzak Adres:	Remote Address
audits	audits.notFound	No audit found	No data found
audits	audits.filter.to	kime	From
audits	audits.filter.from	kimden	To
audits	audits.table.header.date	Tarih	Date
audits	audits.filter.button.clear	temizle	Clean
audits	audits.filter.button.today	bugün	Today
audits	audits.table.header.principal	Kullanıcı	User
audits	audits.filter.button.weeks	Hafta	Week
audits	audits.title	Denetim	Inspect
audits	audits.filter.title	Tarihleri filtrele	Filter by date
audits	audits.filter.button.close	kapat	Close
company	kuryeApp.company.home.createLabel	Yeni Firma Oluştur	Add New Company
company	kuryeApp.company.statuson	Açık	Open
company	kuryeApp.company.currencyType	Para Birimi	Currency
company	kuryeApp.company.logo	Logo	Logo
company	kuryeApp.company.home.createOrEditLabel	Firma Oluştur veya Düzenle	Edit Company
company	kuryeApp.company.basePrice	Baz Fiyat	Minimum Price
company	kuryeApp.company.contactPerson	Yetkili	Manager
company	kuryeApp.company.lockstatuson	Aktif	Active
company	kuryeApp.company.delete.question	{{ id }} no'lu Firmayı Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Company {{ id }}?
company	kuryeApp.company.address	Adres	Address
company	kuryeApp.company.status	Durum	Status
company	kuryeApp.company.commisionRate	Komisyon Oranı	Commision
company	kuryeApp.company.createDate	Oluşturma Tarihi	Date Created
company	kuryeApp.company.created	{{ param }} no'lu Firma Oluşturuldu	A new Company is created with identifier {{ param }}
company	kuryeApp.company.langKey	Varsayılan Dil	Current Language
company	kuryeApp.company.home.title	Firmalar	Companies
company	kuryeApp.company.lockstatusoff	Pasif	Inactive
company	kuryeApp.company.ready	Aktivasyon Talebi	Request Activation 
company	kuryeApp.company.email	E-Mail	E-Mail
company	kuryeApp.company.name	Firma Adı	Company Name
company	kuryeApp.company.documents	Gerekli Evraklar	Required Documents
company	kuryeApp.company.downloadFile	Dosyayı İndir	Download
company	kuryeApp.company.lockStatus	Aktiflik Durumu	Current Status
company	kuryeApp.company.lockstatusall	Tümü	All
company	kuryeApp.company.companyType	Firma Türü	Company Type
company	kuryeApp.company.home.notFound	Firma Bulunamadı	Can not find company
company	kuryeApp.company.lockstatuswaiting	Aktivasyon Bekliyor	Waiting for activation
company	kuryeApp.company.waitingForActivation	Aktivasyon Bekleniyor	In Process
company	kuryeApp.company.deleted	{{ param }} no'lu Firma Silindi	A Company is deleted with identifier {{ param }}
company	kuryeApp.company.statusoff	Kapalı	Closed
company	kuryeApp.company.phone	Telefon	Telephone
company	kuryeApp.company.updated	{{ param }} no'lu Firma Düzenlendi	A Company is updated with identifier {{ param }}
company	kuryeApp.company.detail.title	Firma	Company
companyPacket	kuryeApp.companyPacket.statuson	Aktif	Active
companyPacket	kuryeApp.companyPacket.deleted	{{ param }} no'lu Hizmet Paketi Silindi	A Service Package is deleted with identifier {{ param }}
companyPacket	kuryeApp.companyPacket.detail.title	Hizmet Paketi	Services
companyPacket	kuryeApp.companyPacket.delete.question	{{ id }} no'lu Hizmet Paketini Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Service Package {{ id }}?
companyPacket	kuryeApp.companyPacket.statusoff	Pasif	Inactive
companyPacket	kuryeApp.companyPacket.updated	{{ param }} no'lu Hizmet Paketi Değiştirildi	A Service Package is updated with identifier {{ param }}
companyPacket	kuryeApp.companyPacket.home.notFound	Hizmet Paketi Bulunamadı	Can not find service
companyPacket	kuryeApp.companyPacket.services	Hizmet Ücretleri	Service Fee
companyPacket	kuryeApp.companyPacket.currencyType	Para Birimi	Currency
companyPacket	kuryeApp.companyPacket.home.createOrEditLabel	Hizmet Paketi Oluştur veya Düzenle	Edit Services
companyPacket	kuryeApp.companyPacket.home.title	Hizmet Paketleri	Services
companyPacket	kuryeApp.companyPacket.created	{{ param }} no'lu Hizmet Paketi Oluşturuldu	A new Service Package is created with identifier {{ param }}
companyPacket	kuryeApp.companyPacket.home.createLabel	Yeni Hizmet Paketi Oluştur	Create new service
companyPacket	kuryeApp.companyPacket.name	Paket Adı	Service Name
companyPacket	kuryeApp.companyPacket.status	Durum	Status
companyPacketService	kuryeApp.companyPacketService.statuson	Aktif	Active
companyPacketService	kuryeApp.companyPacketService.created	Hizmet Ücreti Kaydedildi	Service Fee Saved
companyPacketService	kuryeApp.companyPacketService.multiply	*	Multiply
companyPacketService	kuryeApp.companyPacketService.type	Ekle/Çarp	Plus/Multiply
companyPacketService	kuryeApp.companyPacketService.home.title	Ek Hizmetler	Additional Services
companyPacketService	kuryeApp.companyPacketService.updated	Hizmet Ücreti Kaydedildi	Service Fee Saved
companyPacketService	kuryeApp.companyPacketService.status	Durum	Status
companyPacketService	kuryeApp.companyPacketService.plus	+	Plus
companyPacketService	kuryeApp.companyPacketService.price	Ücret/Oran	Cost/Percentage
companyPacketService	kuryeApp.companyPacketService.statusoff	Pasif	Inactive
companyPacketService	kuryeApp.companyPacketService.additionalService	Hizmet	Service
companyProductPrice	kuryeApp.companyProductPrice.deleted	{{ param }} no'lu Ürün Fiyatı Silindi	A new Product Price is created with identifier {{ param }}
companyProductPrice	kuryeApp.companyProductPrice.delete.question	{{ id }} no'lu Ürün Fiyatını Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Service fee {{ id }}?
companyProductPrice	kuryeApp.companyProductPrice.home.notFound	Ürün Fiyatı Bulunamadı	Can not find price
companyProductPrice	kuryeApp.companyProductPrice.statusoff	Pasif	Inactive
companyProductPrice	kuryeApp.companyProductPrice.additionalPrice	Ek birim başına fiyat	Per Unit Cost
companyProductPrice	kuryeApp.companyProductPrice.maxQuantity	Maksimum Miktar	Maximum Price
companyProductPrice	kuryeApp.companyProductPrice.basePrice	Baz Fiyat	Minimum Price
companyProductPrice	kuryeApp.companyProductPrice.productType	Ürün Türü	Product Type
companyProductPrice	kuryeApp.companyProductPrice.home.title	Ürün Fiyatları	Product Prices
companyProductPrice	kuryeApp.companyProductPrice.home.createOrEditLabel	Ürün Fiyatı Oluştur veya Düzenle	Add/Edit Product Prices
companyProductPrice	kuryeApp.companyProductPrice.home.createLabel	Ürün Fiyatı Oluştur	Change Product Price
companyProductPrice	kuryeApp.companyProductPrice.statuson	Aktif	Active
companyProductPrice	kuryeApp.companyProductPrice.detail.title	Ürün Fiyatı	Product Cost
companyProductPrice	kuryeApp.companyProductPrice.baseQuantity	Baz Miktar	Minimum Price
companyProductPrice	kuryeApp.companyProductPrice.created	{{ param }} no'lu Ürün Fiyatı Oluşturuldu	A new Service fee is created with identifier {{ param }}
companyProductPrice	kuryeApp.companyProductPrice.status	Durum	Status
companyProductPrice	kuryeApp.companyProductPrice.updated	{{ param }} no'lu Ürün Fiyatı Değiştirildi	A Service fee is updated with identifier {{ param }}
companyType	kuryeApp.companyType.home.createOrEditLabel	Firma Türü  Oluştur veya Düzenle	Add/Edit Company Type
companyType	kuryeApp.companyType.productType	Ürün Türü	Service Type
companyType	kuryeApp.companyType.additionalService	Ek Hizmet	Additional Services
companyType	kuryeApp.companyType.updated	{{ param }} no'lu Firma Türü Düzenlendi	A Company Type is updated with identifier {{ param }}
companyType	kuryeApp.companyType.deleted	{{ param }} no'lu Firma Türü Silindi	A new Company Type is created with identifier {{ param }}
companyType	kuryeApp.companyType.home.createLabel	Yeni Firma Türü Oluştur	Create New Company Type
companyType	kuryeApp.companyType.home.notFound	Firma Türü Bulunamadı	Can not find company type
companyType	kuryeApp.companyType.documentType	Doküman Türü	Document Type
companyType	kuryeApp.companyType.delete.question	{{ id }} no'lu Firma Türünü Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Company Type {{ id }}?
companyType	kuryeApp.companyType.home.title	Firma Türleri	Company Types
companyType	kuryeApp.companyType.detail.title	Firma Türü	Company Type
companyType	kuryeApp.companyType.name	Firma Türü	Company Type
companyType	kuryeApp.companyType.created	{{ param }} no'lu Firma Türü Oluşturuldu	A Company Type is deleted with identifier {{ param }}
configuration	configuration.table.prefix	Önek	Example
configuration	configuration.table.properties	Özellikler	Settings
configuration	configuration.filter	Filtrele (Önek ile)	Add Filter
configuration	configuration.title	Yapılandırma	Configuration
currencyType	kuryeApp.currencyType.created	{{ param }} no'lu Para Birimi Oluşturuldu	A new Currency Type is created with identifier {{ param }}
currencyType	kuryeApp.currencyType.home.title	Para Birimleri	Currency List
currencyType	kuryeApp.currencyType.delete.question	{{ id }} no'lu Para Biriminü Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Currency Type {{ id }}?
currencyType	kuryeApp.currencyType.currencyCode	Para Birimi Kodu	Currency Code
currencyType	kuryeApp.currencyType.home.createLabel	Yeni Para Birimi Oluştur	Create New Currency
currencyType	kuryeApp.currencyType.updated	{{ param }} no'lu Para Birimi Düzenlendi	A Currency Type is updated with identifier {{ param }}
currencyType	kuryeApp.currencyType.deleted	{{ param }} no'lu Para Birimi Silindi	A Currency Type is deleted with identifier {{ param }}
currencyType	kuryeApp.currencyType.home.createOrEditLabel	Para Birimi  Oluştur veya Düzenle	Add/Edit Currency
currencyType	kuryeApp.currencyType.currencyName	Para Birimi	Currency
currencyType	kuryeApp.currencyType.home.notFound	Para Birimi Bulunamadı	Can not find currency
regionGroup	kuryeApp.regionGroup.name	Grup	group
currencyType	kuryeApp.currencyType.detail.title	Para Birimi	Currency List
documentType	kuryeApp.documentType.name	Adı	Name
documentType	kuryeApp.documentType.updated	{{ param }} no'lu Doküman Türü Düzenlendi	A Document Type is updated with identifier {{ param }}
documentType	kuryeApp.documentType.deleted	{{ param }} no'lu Doküman Türü Silindi	A Document Type is deleted with identifier {{ param }}
documentType	kuryeApp.documentType.detail.title	Doküman Türü	Document Type
documentType	kuryeApp.documentType.home.createOrEditLabel	Doküman Türü Oluştur veya Düzenle	Create/Edit Document
documentType	kuryeApp.documentType.home.createLabel	Yeni Doküman Türü Oluştur	Create New Document Type
documentType	kuryeApp.documentType.home.notFound	Doküman Türü Bulunamadı	Document Type Not Found
documentType	kuryeApp.documentType.home.title	Doküman Türleri	Document Types
documentType	kuryeApp.documentType.delete.question	{{ id }} no'lu Doküman Türünü Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Document Type {{ id }}?
documentType	kuryeApp.documentType.created	{{ param }} no'lu Doküman Türü Oluşturuldu	A new Document Type is created with identifier {{ param }}
documentType	kuryeApp.documentType.companyType	Firma Türü	Company Type
global	global.menu.entities.orderT	Siparişler	Orders
global	global.form.confirmpassword.label	Yeni Şifre Tekrar	New Password
global	entity.action.save	Kaydet	Save
global	global.messages.validate.confirmpassword.minlength	Tekrar şifreniz en az 4 karakter olmalıdır	Password must be min 4 characters
global	global.menu.entities.priceList	Fiyat Listesi	Price List
global	global.menu.entities.documentType	Doküman Türleri	Document Types
global	global.item-count	Toplam {{total}} kaydın {{first}} - {{second}} arası gösteriliyor.	Showing {{first}} - {{second}} of {{total}} items.
global	error.idnull	Invalid ID	Invalid ID
global	global.menu.admin.logs	Kayıtlar	Archives
global	global.menu.entities.main	Varlıklar	Assets
global	global.messages.validate.email.minlength	E-posta adresi en az 5 karakter olmalıdır	Please enter valid e-mail address
global	entity.action.close	Kapat	Close
global	error.file.could.not.extract	Could not extract file	Could not extract file
global	global.menu.admin.tracker	Kullanıcı Takip	Track
global	global.menu.entities.productType	Ürün Türleri	Item Types
global	global.menu.admin.main	Yönetim	Management
global	global.form.email.placeholder	E-posta adresiniz	E-Mail Address
global	entity.validation.patternLogin	Bu alan harf, rakam veya e-posta adresi içermeli.	Please enter email adress
global	dateFilter.last60Days	Son 2 Ay	Last 2 months
global	dateFilter.last90Days	Son 3 Ay	Last 3 months
global	global.menu.language	Dil	Language
global	error.emailexists	E-posta adresi zaten kullanılıyor!	E-mail address already in use
global	global.field.id	No	No
global	entity.detail.value	Değer	Variable
global	global.menu.entities.region	Bölgeler	Groups
global	dateFilter.all	Tümü	All 
global	entity.validation.min	Bu alan en az {{min}} olmalı.	This field should be at least {{ min }}.
global	global.menu.entities.companyPacketService	Hizmet Paketi Hizmetleri	Extra Service List
global	entity.action.addimage	Resim Ekle	Please Add Picture
global	entity.action.delete	Sil	Delete
global	entity.detail.field	Alan	Area
global	error.userexists	Kullanıcı adı daha önce alınmış!	Already have the same user
global	global.menu.entities.currencyType	Para Birimleri	Currencies 
global	global.messages.info.register.noaccount	Henüz bir hesabınız yok mu?	Do you have an account ? 
global	global.menu.home	Ana Sayfa	Homepage
global	global.menu.account.settings	Ayarlar	Settings
global	entity.validation.max	Bu alan en fazla {{max}} olmalı.	This field cannot be more than {{ max }}.
global	global.form.currentpassword.placeholder	Mevcut Şifreniz	Current Password
global	entity.action.view	Görüntüle	Show
global	global.menu.account.register	Kayıt	Save
global	entity.validation.datetimelocal	Bu alan tarih veya zaman içermeli.	Please enter valid date and time
global	global.form.email.label	E-posta	E-Mail
global	global.form.newpassword.placeholder	Yeni Şifreniz	New Password
global	global.ribbon.dev	Development	Development
global	entity.validation.minlength	Bu alan en az {{min}} karakterden oluşabilir.	This field is required to be at least {{ min }} characters.
global	global.form.username.label	Kullanıcı Adı	Username
global	error.NotNull	{{fieldName}} alanı boş bırakılamaz!	Field {{ fieldName }} cannot be empty!
global	global.menu.account.login	Giriş	Enter
global	global.menu.account.logout	Çıkış	Exit
global	error.url.not.found	Bulunamadı	Can not find
global	dateFilter.last3Days	Son 3 Gün	Last 3 days
global	global.messages.validate.newpassword.minlength	Şifreniz en az 4 karakter olmak zorundadır	Password must be min 4 characters
global	global.menu.admin.userManagement	Kullanıcı yönetimi	User Settings
global	error.Size	{{fieldName}} alanı min/max gerekliliklere uymuyor!	Field {{ fieldName }} does not meet min/max size requirements!
global	global.menu.admin.configuration	Yapılandırma	Configuration
global	entity.validation.required	Bu alan gerekli.	Please Fill
global	global.messages.validate.email.required	E-posta zorunlu alandır.	Please enter e-mail
global	entity.delete.title	Silme işlemini onayla	Confirm Delete ? 
global	global.messages.validate.newpassword.required	Şifre zorunlu alandır.	Enter Password
global	global.menu.account.sessions	Oturumlar	Sessions
global	global.menu.account.main	Hesap	Account
global	global.form.username.placeholder	Kullanıcı Adınız	Username
global	global.messages.validate.confirmpassword.maxlength	Tekrar şifreniz 50 karakterden uzun olamaz	Password must be within 50 characters
global	global.form.currentpassword.label	Mevcut Şifre	Current Password
global	global.menu.admin.health	Sağlık	Health
global	entity.action.edit	Düzenle	Edit
global	entity.action.back	Geri	Back
global	global.menu.entities.myCompany	Firmam	My Company
global	entity.validation.pattern	Bu alan {{pattern}} şablonuna uymuyor.	This field should follow pattern for {{ pattern }}.
global	global.menu.entities.companyProductPrice	Ürün Fiyatları	Item Prices
global	global.messages.validate.email.invalid	E-posta alanı uygun değil.	E-Mail is not valid
global	entity.action.cancel	İptal	Cancel
global	dateFilter.last7Days	Son 7 Gün	Last 7 days
global	entity.validation.number	Bu alan numara içermeli.	Must enter valid number
global	global.messages.validate.email.maxlength	E-posta adresi 50 karakterden fazla olamaz	E-mail must be within 50 characters
global	global.menu.admin.database	Veritabanı	Database
global	dateFilter.last15Days	Son 15 Gün	Last 15 days
global	footer	Burası sayfa alt bilgisi	Page Info
global	global.title	KuryeApp	Kargomo Transporter
global	global.menu.entities.companyType	Firma Türleri	Company Types
global	global.menu.admin.audits	Denetim	Review
global	global.menu.entities.companyPacket	Hizmet Paketleri	Services
global	global.menu.entities.regionGroup	Gruplar	Groups
global	global.browsehappy	<strong>Çok eski</strong> bir tarayıcı kullanıyorsunuz. Lütfen kullanım kalitenizi arttırmak için <a href="http://browsehappy.com/?locale=tr">tarayıcınızı yükseltin</a>.	Please update your browser to current version. 
global	global.menu.entities.company	Firmalar	Companies
global	entity.validation.minbytes	Bu alan en az {{min}} byte olmalı.	This field should be at least {{ min }} bytes.
global	dateFilter.last30Days	Son 1 Ay	Last 1 month
global	error.internalServerError	Beklenmedik bir hata oluştu, Sistem yöneticisine başvurunuz	There is an error, please contact admin. 
global	global.menu.account.password	Şifre	Password
global	global.messages.info.authenticated.link	Giriş	Enter
global	entity.action.open	Aç	Open
global	global.form.newpassword.label	Yeni Şifre	New Password
global	global.menu.admin.apidocs	API	API
global	global.form.confirmpassword.placeholder	Yeni Şifreniz Tekrar	Please re-enter your password
global	global.messages.validate.newpassword.strength	Şifre karmaşıklığı:	Password Strength
global	global.menu.entities.additionalService	Ek Hizmetler	Additional Services
global	global.messages.error.dontmatch	Şifreler eşleşmedi!	Password does not match
global	global.messages.info.register.link	Yeni hesap oluştur	Create new account
global	global.menu.admin.metrics	Ölçümler	Measurements
global	entity.validation.maxlength	Bu alan en fazla {{max}} karakterden oluşabilir.	This field cannot be more than {{ max }} bytes.
global	global.messages.validate.newpassword.maxlength	Şifreniz 50 karakterden uzun olamaz	Password can not be more than 50 characters
global	error.server.not.reachable	Sunucuya ulaşılamıyor	Server Disconnected
global	global.messages.validate.confirmpassword.required	Tekrar şifresi zorunludur.	Please re-enter your password
login	login.password.forgot	Şifreni mi unuttun?	Forgot Password ? 
login	login.form.rememberme	Beni Hatırla	Remember me
login	login.form.password	Şifre	Password
login	login.form.button	Giriş	Enter
login	login.messages.error.authentication	<strong>Giriş işlemi başarısız oldu!</strong> Lütfen kullanıcı bilgilerinizi kontrol edip tekrar deneyin.	can not login, please enter e-mail and password
login	login.form.username.emptyError	Kullanıcı Adı Boş Olamaz!	Please enter username
login	login.form.password.emptyError	Şifre Boş Olamaz!	Please enter password
login	login.title	Giriş	Enter
login	login.form.password.placeholder	Şifre	Password
orderT	kuryeApp.orderT.reject.question	{{ id }} no'lu Siparişi Reddetmek İstediğinize Emin Misiniz?	Are you sure you want to cancel Order {{ id }}?
orderT	kuryeApp.orderT.sendingDate	Gönderim Tarihi	Order Date
orderT	kuryeApp.orderT.confirm.question	{{ id }} no'lu Siparişi Onaylamak İstediğinize Emin Misiniz?	Are you sure you want to caccept Order {{ id }}?
orderT	kuryeApp.orderT.home.title	Siparişler	Orders
orderT	kuryeApp.orderT.additionalPayments	Ek Ödemeler	Additional Fees
orderT	kuryeApp.orderT.delete.question	{{ id }} no'lu Siparişi Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Order {{ id }}?
orderT	kuryeApp.orderT.customer	Müşteri	Customer
orderT	kuryeApp.orderT.updated	{{ param }} no'lu Sipariş Değiştirildi	An Order is updated with identifier {{ param }}
orderT	kuryeApp.orderT.detail.title	Sipariş	Order
orderT	kuryeApp.orderT.images	Resimler	Images
orderT	kuryeApp.orderT.toCustomer	Nereye	To
orderT	kuryeApp.orderT.fromCustomer	Nereden	From
orderT	kuryeApp.orderT.company	Firma	Company
orderT	kuryeApp.orderT.status	Durum	Status
orderT	kuryeApp.orderT.deleted	{{ param }} no'lu Sipariş Silindi	An Order is deleted with identifier {{ param }}
orderT	kuryeApp.orderT.companyPacketService	Hizmet Paketi	Services
orderT	kuryeApp.orderT.home.createLabel	Yeni Sipariş Oluştur	Create new order
orderT	kuryeApp.orderT.home.notFound	Sipariş Bulunamadı	can not find order
orderT	kuryeApp.orderT.fromAdress	Alım Adresi	Pick Up Address
orderT	kuryeApp.orderT.reject.button	Siparişi Reddet	Reject Order
orderT	kuryeApp.orderT.price	Tutar	Total Cost:
orderT	kuryeApp.orderT.home.createOrEditLabel	Sipariş Oluştur veya Düzenle	Creat/Edit Order
orderT	kuryeApp.orderT.toAddress	Teslimat Adresi	Drop Off Address
regionGroup	kuryeApp.regionGroup.home.title	Gruplar	groups
orderT	kuryeApp.orderT.created	{{ param }} no'lu Sipariş Oluşturuldu	A new Order is created with identifier {{ param }}
orderT	kuryeApp.orderT.confirm.button	Siparişi Onayla	Confirm Order
orderT	kuryeApp.orderT.uuid	Uuid	Uuid
orderT	kuryeApp.orderT.products	Ürünler	Items
password	password.title	[<strong>{{username}}</strong>] kullanıcısı için şifre	Password for [<strong>{{username}}</strong>]
password	password.messages.error	<strong>Bir hata oluştu!</strong> Şifre değiştirilemedi.	Can not change password
password	password.messages.success	<strong>Şifre değiştirildi!</strong>	Password changed
password	password.form.button	Kaydet	Save
priceList	kuryeApp.priceList.home.createLabel	Yeni Fiyat Listesi Oluştur	Create New Price List
priceList	kuryeApp.priceList.home.title	Fiyat Listeleri	Price Lists
priceList	kuryeApp.priceList.deliveryRegion	Teslimat Bölgesi	Delivery Area
priceList	kuryeApp.priceList.home.createOrEditLabel	Fiyat Listesi Oluştur veya Düzenle	Create/Edit Price List
priceList	kuryeApp.priceList.loadRegionGroup	Alım Bölge Grubu	Service Area
priceList	kuryeApp.priceList.updated	{{ param }} no'lu Fiyat Listesi Değiştirildi	A Price List is updated with identifier {{ param }}
priceList	kuryeApp.priceList.price	Fiyat	Price
priceList	kuryeApp.priceList.duration	Süre (dk.)	Duration
priceList	kuryeApp.priceList.created	{{ param }} no'lu Fiyat Listesi Oluşturuldu	A new Price List is created with identifier {{ param }}
priceList	kuryeApp.priceList.detail.title	Fiyat Listesi	Price List
priceList	kuryeApp.priceList.home.notFound	Fiyat Listesi Bulunamadı	Can not find price list
priceList	kuryeApp.priceList.status	Durum	Status
priceList	kuryeApp.priceList.currencyType	Para Birimi	Currency
priceList	kuryeApp.priceList.deleted	{{ param }} no'lu Fiyat Listesi Silindi	A Price List is deleted with identifier {{ param }}
priceList	kuryeApp.priceList.companyPacket	Ek Hizmet Paketi	Additional Services
priceList	kuryeApp.priceList.deliveryRegionGroup	Teslimat Bölge Grubu	Delivery Area List
priceList	kuryeApp.priceList.delete.question	{{ id }} no'lu Fiyat Listesini Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Price List {{ id }}?
priceList	kuryeApp.priceList.statuson	Aktif	Active
priceList	kuryeApp.priceList.loadRegion	Alım Bölgesi	Pick Up Area
priceList	kuryeApp.priceList.statusoff	Pasif	Inactive
productType	kuryeApp.productType.deleted	{{ param }} no'lu Ürün Türü Silindi	A Item Type is deleted with identifier {{ param }}
productType	kuryeApp.productType.statusoff	Pasif	Inactive
productType	kuryeApp.productType.created	{{ param }} no'lu Ürün Türü Oluşturuldu	A new Item Type is created with identifier {{ param }}
productType	kuryeApp.productType.updated	{{ param }} no'lu Ürün Türü Değiştirildi	A Item Type is updated with identifier {{ param }}
productType	kuryeApp.productType.companyType	Firma Türü	Company Type
productType	kuryeApp.productType.home.title	Ürün Türleri	Delivery Types
productType	kuryeApp.productType.home.createOrEditLabel	Ürün Türü Oluştur veya Düzenle	Create/Edit Delivery Types
productType	kuryeApp.productType.home.notFound	Ürün Türü Bulunamadı	Can not find delivery type
productType	kuryeApp.productType.home.createLabel	Yeni Ürün Türü Oluştur	Created new delivery type
productType	kuryeApp.productType.delete.question	{{ id }} no'lu Ürün Türünü Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Item Type {{ id }}?
productType	kuryeApp.productType.detail.title	Ürün Türü	Delivery Type
productType	kuryeApp.productType.name	Ürün Türü	Delivery Type
productType	kuryeApp.productType.status	Durum	Status
productType	kuryeApp.productType.statuson	Aktif	Active
region	kuryeApp.region.deleted	{{ param }} no'lu Bölge Silindi	A Delivery Area is deleted with identifier {{ param }}
region	kuryeApp.region.home.createOrEditLabel	Bölge Oluştur veya Düzenle	Create new delivery area
region	kuryeApp.region.home.notFound	Bölge Bulunamadı	can not find delivery area
region	kuryeApp.region.district	Semt	District
region	kuryeApp.region.detail.title	Bölge	Delivery Area
region	kuryeApp.region.name	Bölge	Delivery Area
region	kuryeApp.region.home.createLabel	Yeni Bölge Oluştur	Create new delivery area
region	kuryeApp.region.updated	{{ param }} no'lu Bölge Değiştirildi	A Delivery Area is updated with identifier {{ param }}
region	kuryeApp.region.home.title	Bölgeler	Delivery Areas
region	kuryeApp.region.delete.question	{{ id }} no'lu Bölgeyi Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Delivery Area {{ id }}?
region	kuryeApp.region.home.search	Bölge Ara	Search Delivery Areas
region	kuryeApp.region.placeHolder	Ülke / Şehir / Semt	Country/City/District
region	kuryeApp.region.city	Şehir	City
region	kuryeApp.region.country	Ülke	Country
region	kuryeApp.region.noRegion	Bölge Bulunamadı	Can not find delivery area
region	kuryeApp.region.created	{{ param }} no'lu Bölge Oluşturuldu	A new Delivery Area is created with identifier {{ param }}
region	kuryeApp.region.county	İlçe	District
region	kuryeApp.region.regionGroup	Grup	Groups 
regionGroup	kuryeApp.regionGroup.home.createLabel	Yeni Grup Oluştur	Create New Group
regionGroup	kuryeApp.regionGroup.created	{{ param }} no'lu Grup Oluşturuldu	A new Group is created with identifier {{ param }}
regionGroup	kuryeApp.regionGroup.deleted	{{ param }} no'lu Grup Silindi	A Group is deleted with identifier {{ param }}
regionGroup	kuryeApp.regionGroup.updated	{{ param }} no'lu Grup Değiştirildi	A Group is updated with identifier {{ param }}
regionGroup	kuryeApp.regionGroup.detail.title	Grub	Group
regionGroup	kuryeApp.regionGroup.home.notFound	Grup Bulunamadı	Can not find group
regionGroup	kuryeApp.regionGroup.company	Firma	company
regionGroup	kuryeApp.regionGroup.region	Bölge	delivery area
regionGroup	kuryeApp.regionGroup.home.createOrEditLabel	Grup Oluştur veya Düzenle	Add/Edit Groups
regionGroup	kuryeApp.regionGroup.regions	Bölgeler	Delivery Areas
regionGroup	kuryeApp.regionGroup.delete.question	{{ id }} no'lu Grubu Silmek İstediğinize Emin misiniz?	Are you sure you want to delete Group {{ id }}?
register	register.form.button	Kayıt Ol	Sign Up
register	register.messages.error.userexists	<strong>Girdiğiniz kullanıcı sistemde mevcut!</strong> Lütfen başka bir kullanıcı deneyin.	User already exist, please enter different username
register	register.messages.error.emailexists	<strong>Email adresi zaten kullanılıyor!</strong> Lütfen başka bir mail seçiniz.	E-mail already exist, please enter different e-mail address
register	register.messages.validate.login.required	Kullanıcı adı zorunlu.	Please enter username
register	register.messages.success	<strong>Kayıt işlemi yapıldı!</strong> Lütfen onay için e-posta'nızı kontrol edin.	Confirmed, please check your e-mail
register	register.title	Kayıt	Save
register	register.messages.error.fail	<strong>Kayıt işlemi başarısız oldu!</strong> Lütfen daha sonra tekrar deneyin.	Incomplete, please try again
register	register.messages.validate.login.pattern	Your username is invalid.	Invalid Username
register	register.messages.validate.login.maxlength	Kullanıcı adı en fazla 50 karakter olabilir	Username can not be more than 50 characters 
register	register.messages.validate.login.minlength	Kullanıcı adı en az 1 karakter olmak zorundadır	Username can not be less than 1 character
reset	reset.finish.messages.keymissing	Şifre sıfırlama anahtarı geçersiz.	password reset key is invalid
reset	reset.request.form.button	Şifreyi sıfırla	Reset Password
reset	reset.finish.title	Şifreyi sıfırla	Reset Password
reset	reset.finish.messages.info	Yeni şifre seç	New Password
reset	reset.finish.messages.success	<strong>Şifren sıfırlandı.</strong> Lütfen 	Password Changed
reset	reset.request.messages.success	Şifreni nasıl sıfırlayacağını öğrenmek için e-postalarını kontrol et.	Check your e-mail about how to reset your password
reset	reset.request.messages.info	Kayıt olurken kullandığın email adresini gir	Please enter your e-mail
reset	reset.finish.form.button	Yeni şifreyi doğrula	Retype new password
reset	reset.finish.messages.error	Şifren sıfırlanamaz. Şifre isteği sadece 24 saat geçerlidir.	Can not change password, wait 24 hours
reset	reset.request.title	Şifreni sıfırla	Reset your password
sessions	sessions.title	[<strong>{{username}}</strong>] kullanıcısı için aktif oturumlar	Active Sessions
sessions	sessions.table.button	Etkisizleştir	Deselect
sessions	sessions.messages.error	<strong>Bİr hata oluştu!</strong> Oturum etkisizleştirilemedi.	Error!
sessions	sessions.table.date	Tarih	Date
sessions	sessions.table.useragent	Kullanıcı Bilgisi	User Info
sessions	sessions.messages.success	<strong>Oturum etkisizleştirildi!</strong>	Deselect session
sessions	sessions.table.ipaddress	IP adresi	IP Address
settings	settings.messages.validate.firstname.maxlength	İsim en fazla 50 karakter olabilir	Incorrect name
settings	settings.form.lastname	Soyisim	Last Name
settings	settings.form.firstname.placeholder	Adınız	Name
settings	settings.messages.success	<strong>Ayarlar kaydedildi!</strong>	Settings Saved
settings	settings.messages.validate.lastname.minlength	Soyisim en az 1 karakter olmak zorundadır	Incorrect last name
settings	settings.messages.validate.firstname.minlength	İsim en az 1 karakter olmak zorundadır	Incorrect name
settings	settings.messages.validate.firstname.required	İsim zorunludur.	Please fill your name
settings	settings.messages.error.fail	<strong>Bir hata oluştu!</strong> Ayarlar kaydedilemedi.	Error, settings not saved
settings	settings.form.lastname.placeholder	Soyadınız	Last Name
settings	settings.messages.error.emailexists	<strong>Email adresi zaten kullanılıyor!</strong> Lütfen başka bir mail seçiniz.	E-mail already in use
settings	settings.form.firstname	İsim	Name
settings	settings.title	Kullanıcı ayarları [<strong>{{username}}</strong>]	User Settings
settings	settings.form.language	Dil	Language
settings	settings.messages.validate.lastname.maxlength	Soyisim en fazla 50 karakter olabilir	Last name can be max 50 characters
settings	settings.messages.validate.lastname.required	Soyisim zorunludur.	Please enter your last name
settings	settings.form.button	Kaydet	Save
user-management	userManagement.lastModifiedDate	Düzenleme tarihi	Date Edited
user-management	userManagement.detail.title	Kullanıcı	User
user-management	userManagement.deleted	{{ param }} kullanıcısı silindi	user deleted
user-management	userManagement.firstName	Ad	Name
user-management	userManagement.home.createOrEditLabel	Kullanıcı oluştur veya düzenle	Add/Edit User
user-management	userManagement.langKey	Dil	Language
user-management	userManagement.updated	{{ param }} kullanıcısı güncellendi	User Updated
user-management	userManagement.home.createLabel	Yeni kullanıcı oluştur	Create New User
user-management	userManagement.createdBy	Oluşturan	Who Created
user-management	userManagement.deactivated	Deaktif	Inactive
user-management	userManagement.createdDate	Oluşturma tarihi	Date Created
user-management	userManagement.activated	Aktif	Active
user-management	userManagement.lastModifiedBy	Düzenleyen	Who Edited
user-management	userManagement.lastName	Soyad	Last Name
user-management	userManagement.login	Giriş	Enter
user-management	userManagement.home.title	Kullanıcılar	Users
user-management	userManagement.created	{{ param }} kullanıcısı oluşturuldu	user created
user-management	userManagement.profiles	Profiller	Profiles
user-management	userManagement.delete.question	{{ login }} kullanıcısını silmek istediğinize emin misiniz?	Are you sure you want to delete user {{ login }}?
user-management	userManagement.email	Eposta	e-mail
user-management	userManagement.company	Firma	company
\.


--
-- TOC entry 2776 (class 2606 OID 23456)
-- Name: translations translations_un; Type: CONSTRAINT; Schema: public; Owner: kuryeApp
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_un UNIQUE (module, identifier);


-- Completed on 2021-02-20 14:56:55

--
-- PostgreSQL database dump complete
--

