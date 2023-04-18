<%-- 
    Document   : index
    Created on : Mar 27, 2023, 8:54:28 PM
    Author     : Mr. Mittal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/style.css" />
        <!--<link rel="stylesheet" href="WEB-INF/fontawesome-free-5.15.3-web/css/all.min.css" />-->
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
            />
    </head>
    <body>

<%@include file="include/navbar.jsp" %>
<div class="container">
<div class="row">
   <!-- Carousel wrapper -->
<div id="carouselBasicExample" class="carousel slide carousel-fade" data-mdb-ride="carousel">
  <!-- Indicators -->
  <div class="carousel-indicators">
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="1"
      aria-label="Slide 2"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="2"
      aria-label="Slide 3"
    ></button>
  </div>

  <!-- Inner -->
  <div class="carousel-inner">
    <!-- Single item -->
    <div class="carousel-item active">
      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(15).webp" class="d-block w-100" alt="Sunset Over the City"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(22).webp" class="d-block w-100" alt="Canyon at Nigh"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(23).webp" class="d-block w-100" alt="Cliff Above a Stormy Sea"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- Carousel wrapper -->
    
</div>
</div>

        

        <!-- home section -->
        <div class="home-container">
            <div class="home-content">
                <div class="inner-content">
                    <h3>best in city</h3>
                    <h2>trusted cab sservice in county</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum
                        nihil deserunt odio repellendus dolorum suscipit excepturi placeat
                        facilis dignissimos officiis aut nam, delectus possimus rerum
                        consequatur similique! Deserunt, vitae. Officiis?
                    </p>
                    <a href="#" class="booknow">book now</a>
                </div>
                <div class="inner-content">
                    <div  class="contact-form">
                        <div style="margin-top: -10vh" class="form-heading">
                            <h1>book a cab</h1>
                        </div>
                        <div class="form-fields">
                            <select class="col-9 p-3 mt-3" type="text" name="city" id="city" placeholder="name" required  style="font-size: 1.4em"> 
                                      <!--<select class="form-control" name="city" id="validationCustom04" required>-->
                                                        <option value="">Select City</option>
                                                        <option value="Muzaffarnagar">Muzaffarnagar</option>
                                                        <option value="Achhnera">Achhnera</option>
                                                        <option value="Afzalgarh">Afzalgarh</option>
                                                        <option value="Agra">Agra</option>
                                                        <option value="Ahraura">Ahraura</option>
                                                        <option value="Ajodhya">Ajodhya</option>
                                                        <option value="Akbarpur">Akbarpur</option>
                                                        <option value="Aliganj">Aliganj</option>
                                                        <option value="Aligarh">Aligarh</option>
                                                        <option value="Allahabad">Allahabad</option>
                                                        <option value="Allahganj">Allahganj</option>
                                                        <option value="Amanpur">Amanpur</option>
                                                        <option value="Ambahta">Ambahta</option>
                                                        <option value="Ambedkar Nagar">Ambedkar Nagar</option>
                                                        <option value="Amethi">Amethi</option>
                                                        <option value="Amroha">Amroha</option>
                                                        <option value="Anandnagar">Anandnagar</option>
                                                        <option value="Antu">Antu</option>
                                                        <option value="Anupshahr">Anupshahr</option>
                                                        <option value="Aonla">Aonla</option>
                                                        <option value="Atarra">Atarra</option>
                                                        <option value="Atrauli">Atrauli</option>
                                                        <option value="Atraulia">Atraulia</option>
                                                        <option value="Auraiya">Auraiya</option>
                                                        <option value="Auras">Auras</option>
                                                        <option value="Azamgarh">Azamgarh</option>
                                                        <option value="Baberu">Baberu</option>
                                                        <option value="Babina">Babina</option>
                                                        <option value="Babrala">Babrala</option>
                                                        <option value="Babugarh">Babugarh</option>
                                                        <option value="Bachhraon">Bachhraon</option>
                                                        <option value="Bachhrawan">Bachhrawan</option>
                                                        <option value="Baghpat">Baghpat</option>
                                                        <option value="Bah">Bah</option>
                                                        <option value="Baheri">Baheri</option>
                                                        <option value="Bahjoi">Bahjoi</option>
                                                        <option value="Bahraich">Bahraich</option>
                                                        <option value="Bahraigh">Bahraigh</option>
                                                        <option value="Bahsuma">Bahsuma</option>
                                                        <option value="Bahua">Bahua</option>
                                                        <option value="Bajna">Bajna</option>
                                                        <option value="Bakewar">Bakewar</option>
                                                        <option value="Baldev">Baldev</option>
                                                        <option value="Ballia">Ballia</option>
                                                        <option value="Balrampur">Balrampur</option>
                                                        <option value="Banat">Banat</option>
                                                        <option value="Banbasa">Banbasa</option>
                                                        <option value="Banda">Banda</option>
                                                        <option value="Bangarmau">Bangarmau</option>
                                                        <option value="Bansdih">Bansdih</option>
                                                        <option value="Bansgaon">Bansgaon</option>
                                                        <option value="Bansi">Bansi</option>
                                                        <option value="Bara Banki">Bara Banki</option>
                                                        <option value="Baragaon">Baragaon</option>
                                                        <option value="Baraut">Baraut</option>
                                                        <option value="Bareilly">Bareilly</option>
                                                        <option value="Barkhera Kalan">Barkhera Kalan</option>
                                                        <option value="Barsana">Barsana</option>
                                                        <option value="Basti">Basti</option>
                                                        <option value="Behat">Behat</option>
                                                        <option value="Bela">Bela</option>
                                                        <option value="Beniganj">Beniganj</option>
                                                        <option value="Beswan">Beswan</option>
                                                        <option value="Bewar">Bewar</option>
                                                        <option value="Bhadohi">Bhadohi</option>
                                                        <option value="Bhagwantnagar">Bhagwantnagar</option>
                                                        <option value="Bharthana">Bharthana</option>
                                                        <option value="Bharwari">Bharwari</option>
                                                        <option value="Bhinga">Bhinga</option>
                                                        <option value="Bhongaon">Bhongaon</option>
                                                        <option value="Bidhuna">Bidhuna</option>
                                                        <option value="Bighapur Khurd">Bighapur Khurd</option>
                                                        <option value="Bijnor">Bijnor</option>
                                                        <option value="Bikapur">Bikapur</option>
                                                        <option value="Bilari">Bilari</option>
                                                        <option value="Bilariaganj">Bilariaganj</option>
                                                        <option value="Bilaspur">Bilaspur</option>
                                                        <option value="Bilgram">Bilgram</option>
                                                        <option value="Bilhaur">Bilhaur</option>
                                                        <option value="Bilsanda">Bilsanda</option>
                                                        <option value="Bilsi">Bilsi</option>
                                                        <option value="Bilthra">Bilthra</option>
                                                        <option value="Bindki">Bindki</option>
                                                        <option value="Bisalpur">Bisalpur</option>
                                                        <option value="Bisauli">Bisauli</option>
                                                        <option value="Bisenda Buzurg">Bisenda Buzurg</option>
                                                        <option value="Bishunpur Urf Maharajganj">Bishunpur Urf Maharajganj</option>
                                                        <option value="Biswan">Biswan</option>
                                                        <option value="Bithur">Bithur</option>
                                                        <option value="Budaun">Budaun</option>
                                                        <option value="Budhana">Budhana</option>
                                                        <option value="Bulandshahr">Bulandshahr</option>
                                                        <option value="Captainganj">Captainganj</option>
                                                        <option value="Chail">Chail</option>
                                                        <option value="Chakia">Chakia</option>
                                                        <option value="Chandauli">Chandauli</option>
                                                        <option value="Chandauli District">Chandauli District</option>
                                                        <option value="Chandpur">Chandpur</option>
                                                        <option value="Chanduasi">Chanduasi</option>
                                                        <option value="Charkhari">Charkhari</option>
                                                        <option value="Charthawal">Charthawal</option>
                                                        <option value="Chhaprauli">Chhaprauli</option>
                                                        <option value="Chharra">Chharra</option>
                                                        <option value="Chhata">Chhata</option>
                                                        <option value="Chhibramau">Chhibramau</option>
                                                        <option value="Chhutmalpur">Chhutmalpur</option>
                                                        <option value="Chillupar">Chillupar</option>
                                                        <option value="Chirgaon">Chirgaon</option>
                                                        <option value="Chitrakoot">Chitrakoot</option>
                                                        <option value="Chopan">Chopan</option>
                                                        <option value="Chunar">Chunar</option>
                                                        <option value="Colonelganj">Colonelganj</option>
                                                        <option value="Dadri">Dadri</option>
                                                        <option value="Dalmau">Dalmau</option>
                                                        <option value="Dankaur">Dankaur</option>
                                                        <option value="Dasna">Dasna</option>
                                                        <option value="Dataganj">Dataganj</option>
                                                        <option value="Daurala">Daurala</option>
                                                        <option value="Dayal Bagh">Dayal Bagh</option>
                                                        <option value="Deoband">Deoband</option>
                                                        <option value="Deoranian">Deoranian</option>
                                                        <option value="Deoria">Deoria</option>
                                                        <option value="Dewa">Dewa</option>
                                                        <option value="Dhampur">Dhampur</option>
                                                        <option value="Dhanaura">Dhanaura</option>
                                                        <option value="Dhaurahra">Dhaurahra</option>
                                                        <option value="Dibai">Dibai</option>
                                                        <option value="Dohrighat">Dohrighat</option>
                                                        <option value="Dostpur">Dostpur</option>
                                                        <option value="Dudhi">Dudhi</option>
                                                        <option value="Etah">Etah</option>
                                                        <option value="Etawah">Etawah</option>
                                                        <option value="Faizabad">Faizabad</option>
                                                        <option value="Farah">Farah</option>
                                                        <option value="Faridnagar">Faridnagar</option>
                                                        <option value="Faridpur">Faridpur</option>
                                                        <option value="Farrukhabad">Farrukhabad</option>
                                                        <option value="Fatehabad">Fatehabad</option>
                                                        <option value="Fatehganj West">Fatehganj West</option>
                                                        <option value="Fatehgarh">Fatehgarh</option>
                                                        <option value="Fatehpur">Fatehpur</option>
                                                        <option value="Fatehpur Chaurasi">Fatehpur Chaurasi</option>
                                                        <option value="Fatehpur Sikri">Fatehpur Sikri</option>
                                                        <option value="Firozabad">Firozabad</option>
                                                        <option value="Fyzabad">Fyzabad</option>
                                                        <option value="Gajraula">Gajraula</option>
                                                        <option value="Gangoh">Gangoh</option>
                                                        <option value="Ganj Dundwara">Ganj Dundwara</option>
                                                        <option value="Ganj Muradabad">Ganj Muradabad</option>
                                                        <option value="Garautha">Garautha</option>
                                                        <option value="Garhi Pukhta">Garhi Pukhta</option>
                                                        <option value="Garhmuktesar">Garhmuktesar</option>
                                                        <option value="Gautam Buddha Nagar">Gautam Buddha Nagar</option>
                                                        <option value="Gawan">Gawan</option>
                                                        <option value="Ghatampur">Ghatampur</option>
                                                        <option value="Ghaziabad">Ghaziabad</option>
                                                        <option value="Ghazipur">Ghazipur</option>
                                                        <option value="Ghiror">Ghiror</option>
                                                        <option value="Ghorawal">Ghorawal</option>
                                                        <option value="Ghosi">Ghosi</option>
                                                        <option value="Gohand">Gohand</option>
                                                        <option value="Gokul">Gokul</option>
                                                        <option value="Gola Bazar">Gola Bazar</option>
                                                        <option value="Gola Gokarannath">Gola Gokarannath</option>
                                                        <option value="Gonda">Gonda</option>
                                                        <option value="Gonda City">Gonda City</option>
                                                        <option value="Gopamau">Gopamau</option>
                                                        <option value="Gorakhpur">Gorakhpur</option>
                                                        <option value="Goshainganj">Goshainganj</option>
                                                        <option value="Govardhan">Govardhan</option>
                                                        <option value="Greater Noida">Greater Noida</option>
                                                        <option value="Gulaothi">Gulaothi</option>
                                                        <option value="Gunnaur">Gunnaur</option>
                                                        <option value="Gursahaiganj">Gursahaiganj</option>
                                                        <option value="Gursarai">Gursarai</option>
                                                        <option value="Gyanpur">Gyanpur</option>
                                                        <option value="Haldaur">Haldaur</option>
                                                        <option value="Hamirpur">Hamirpur</option>
                                                        <option value="Handia">Handia</option>
                                                        <option value="Hapur">Hapur</option>
                                                        <option value="Haraiya">Haraiya</option>
                                                        <option value="Hardoi">Hardoi</option>
                                                        <option value="Harduaganj">Harduaganj</option>
                                                        <option value="Hasanpur">Hasanpur</option>
                                                        <option value="Hastinapur">Hastinapur</option>
                                                        <option value="Hata">Hata</option>
                                                        <option value="Hathras">Hathras</option>
                                                        <option value="Iglas">Iglas</option>
                                                        <option value="Ikauna">Ikauna</option>
                                                        <option value="Indergarh">Indergarh</option>
                                                        <option value="Islamnagar">Islamnagar</option>
                                                        <option value="Itaunja">Itaunja</option>
                                                        <option value="Itimadpur">Itimadpur</option>
                                                        <option value="Jagdishpur">Jagdishpur</option>
                                                        <option value="Jagnair">Jagnair</option>
                                                        <option value="Jahanabad">Jahanabad</option>
                                                        <option value="Jahangirabad">Jahangirabad</option>
                                                        <option value="Jahangirpur">Jahangirpur</option>
                                                        <option value="Jainpur">Jainpur</option>
                                                        <option value="Jais">Jais</option>
                                                        <option value="Jalalabad">Jalalabad</option>
                                                        <option value="Jalali">Jalali</option>
                                                        <option value="Jalalpur">Jalalpur</option>
                                                        <option value="Jalaun">Jalaun</option>
                                                        <option value="Jalesar">Jalesar</option>
                                                        <option value="Jansath">Jansath</option>
                                                        <option value="Jarwal">Jarwal</option>
                                                        <option value="Jasrana">Jasrana</option>
                                                        <option value="Jaswantnagar">Jaswantnagar</option>
                                                        <option value="Jaunpur">Jaunpur</option>
                                                        <option value="Jewar">Jewar</option>
                                                        <option value="Jhalu">Jhalu</option>
                                                        <option value="Jhansi">Jhansi</option>
                                                        <option value="Jhinjhak">Jhinjhak</option>
                                                        <option value="Jhinjhana">Jhinjhana</option>
                                                        <option value="Jhusi">Jhusi</option>
                                                        <option value="Jyotiba Phule Nagar">Jyotiba Phule Nagar</option>
                                                        <option value="Kabrai">Kabrai</option>
                                                        <option value="Kachhwa">Kachhwa</option>
                                                        <option value="Kadaura">Kadaura</option>
                                                        <option value="Kadipur">Kadipur</option>
                                                        <option value="Kaimganj">Kaimganj</option>
                                                        <option value="Kairana">Kairana</option>
                                                        <option value="Kakori">Kakori</option>
                                                        <option value="Kakrala">Kakrala</option>
                                                        <option value="Kalinagar">Kalinagar</option>
                                                        <option value="Kalpi">Kalpi</option>
                                                        <option value="Kamalganj">Kamalganj</option>
                                                        <option value="Kampil">Kampil</option>
                                                        <option value="Kandhla">Kandhla</option>
                                                        <option value="Kannauj">Kannauj</option>
                                                        <option value="Kanpur">Kanpur</option>
                                                        <option value="Kanpur Dehat">Kanpur Dehat</option>
                                                        <option value="Kant">Kant</option>
                                                        <option value="Kanth">Kanth</option>
                                                        <option value="Karari">Karari</option>
                                                        <option value="Karhal">Karhal</option>
                                                        <option value="Kasganj">Kasganj</option>
                                                        <option value="Katra">Katra</option>
                                                        <option value="Kaushambi District">Kaushambi District</option>
                                                        <option value="Kemri">Kemri</option>
                                                        <option value="Khada">Khada</option>
                                                        <option value="Khaga">Khaga</option>
                                                        <option value="Khair">Khair</option>
                                                        <option value="Khairabad">Khairabad</option>
                                                        <option value="Khalilabad">Khalilabad</option>
                                                        <option value="Khanpur">Khanpur</option>
                                                        <option value="Kharela">Kharela</option>
                                                        <option value="Khargupur">Khargupur</option>
                                                        <option value="Kharkhauda">Kharkhauda</option>
                                                        <option value="Khatauli">Khatauli</option>
                                                        <option value="Khekra">Khekra</option>
                                                        <option value="Kheri">Kheri</option>
                                                        <option value="Khudaganj">Khudaganj</option>
                                                        <option value="Khurja">Khurja</option>
                                                        <option value="Khutar">Khutar</option>
                                                        <option value="Kirakat">Kirakat</option>
                                                        <option value="Kiraoli">Kiraoli</option>
                                                        <option value="Kiratpur">Kiratpur</option>
                                                        <option value="Kishanpur">Kishanpur</option>
                                                        <option value="Kishni">Kishni</option>
                                                        <option value="Kithor">Kithor</option>
                                                        <option value="Konch">Konch</option>
                                                        <option value="Kopaganj">Kopaganj</option>
                                                        <option value="Kosi">Kosi</option>
                                                        <option value="Kota">Kota</option>
                                                        <option value="Kotra">Kotra</option>
                                                        <option value="Kulpahar">Kulpahar</option>
                                                        <option value="Kunda">Kunda</option>
                                                        <option value="Kundarkhi">Kundarkhi</option>
                                                        <option value="Kurara">Kurara</option>
                                                        <option value="Kushinagar">Kushinagar</option>
                                                        <option value="Laharpur">Laharpur</option>
                                                        <option value="Lakhimpur">Lakhimpur</option>
                                                        <option value="Lakhna">Lakhna</option>
                                                        <option value="Lalganj">Lalganj</option>
                                                        <option value="Lalitpur">Lalitpur</option>
                                                        <option value="Lar">Lar</option>
                                                        <option value="Lawar Khas">Lawar Khas</option>
                                                        <option value="Loni">Loni</option>
                                                        <option value="Lucknow">Lucknow</option>
                                                        <option value="Lucknow District">Lucknow District</option>
                                                        <option value="Machhlishahr">Machhlishahr</option>
                                                        <option value="Madhoganj">Madhoganj</option>
                                                        <option value="Madhogarh">Madhogarh</option>
                                                        <option value="Maghar">Maghar</option>
                                                        <option value="Mahaban">Mahaban</option>
                                                        <option value="Maharajganj">Maharajganj</option>
                                                        <option value="Mahmudabad">Mahmudabad</option>
                                                        <option value="Mahoba">Mahoba</option>
                                                        <option value="Maholi">Maholi</option>
                                                        <option value="Mahroni">Mahroni</option>
                                                        <option value="Mailani">Mailani</option>
                                                        <option value="Mainpuri">Mainpuri</option>
                                                        <option value="Malihabad">Malihabad</option>
                                                        <option value="Mandawar">Mandawar</option>
                                                        <option value="Maniar">Maniar</option>
                                                        <option value="Manikpur">Manikpur</option>
                                                        <option value="Manjhanpur">Manjhanpur</option>
                                                        <option value="Mankapur">Mankapur</option>
                                                        <option value="Marahra">Marahra</option>
                                                        <option value="Mariahu">Mariahu</option>
                                                        <option value="Mataundh">Mataundh</option>
                                                        <option value="Mathura">Mathura</option>
                                                        <option value="Mau">Mau</option>
                                                        <option value="Mau Aimma">Mau Aimma</option>
                                                        <option value="Maudaha">Maudaha</option>
                                                        <option value="Mauranwan">Mauranwan</option>
                                                        <option value="Mawana">Mawana</option>
                                                        <option value="Meerut">Meerut</option>
                                                        <option value="Mehnagar">Mehnagar</option>
                                                        <option value="Mehndawal">Mehndawal</option>
                                                        <option value="Milak">Milak</option>
                                                        <option value="Miranpur">Miranpur</option>
                                                        <option value="Miranpur Katra">Miranpur Katra</option>
                                                        <option value="Mirganj">Mirganj</option>
                                                        <option value="Mirzapur">Mirzapur</option>
                                                        <option value="Misrikh">Misrikh</option>
                                                        <option value="Mohan">Mohan</option>
                                                        <option value="Mohanpur">Mohanpur</option>
                                                        <option value="Moradabad">Moradabad</option>
                                                        <option value="Moth">Moth</option>
                                                        <option value="Mubarakpur">Mubarakpur</option>
                                                        <option value="Mughal Sarai">Mughal Sarai</option>
                                                        <option value="Muhammadabad">Muhammadabad</option>
                                                        <option value="Muradnagar">Muradnagar</option>
                                                        <option value="Mursan">Mursan</option>
                                                        <option value="Musafir-Khana">Musafir-Khana</option>

                                                        <option value="Nadigaon">Nadigaon</option>
                                                        <option value="Nagina">Nagina</option>
                                                        <option value="Nagram">Nagram</option>
                                                        <option value="Najibabad">Najibabad</option>
                                                        <option value="Nakur">Nakur</option>
                                                        <option value="Nanauta">Nanauta</option>
                                                        <option value="Nandgaon">Nandgaon</option>
                                                        <option value="Nanpara">Nanpara</option>
                                                        <option value="Narauli">Narauli</option>
                                                        <option value="Naraura">Naraura</option>
                                                        <option value="Nautanwa">Nautanwa</option>
                                                        <option value="Nawabganj">Nawabganj</option>
                                                        <option value="Nichlaul">Nichlaul</option>
                                                        <option value="Nihtaur">Nihtaur</option>
                                                        <option value="Niwari">Niwari</option>
                                                        <option value="Nizamabad">Nizamabad</option>
                                                        <option value="Noida">Noida</option>
                                                        <option value="Nurpur">Nurpur</option>
                                                        <option value="Obra">Obra</option>
                                                        <option value="Orai">Orai</option>
                                                        <option value="Oran">Oran</option>
                                                        <option value="Pachperwa">Pachperwa</option>
                                                        <option value="Padrauna">Padrauna</option>
                                                        <option value="Pahasu">Pahasu</option>
                                                        <option value="Pali">Pali</option>
                                                        <option value="Palia Kalan">Palia Kalan</option>
                                                        <option value="Parichha">Parichha</option>
                                                        <option value="Parichhatgarh">Parichhatgarh</option>
                                                        <option value="Parshadepur">Parshadepur</option>
                                                        <option value="Patiali">Patiali</option>
                                                        <option value="Patti">Patti</option>
                                                        <option value="Pawayan">Pawayan</option>
                                                        <option value="Phalauda">Phalauda</option>
                                                        <option value="Phaphund">Phaphund</option>
                                                        <option value="Phariha">Phariha</option>
                                                        <option value="Phulpur">Phulpur</option>
                                                        <option value="Pihani">Pihani</option>
                                                        <option value="Pilibhit">Pilibhit</option>
                                                        <option value="Pilkhua">Pilkhua</option>
                                                        <option value="Pinahat">Pinahat</option>
                                                        <option value="Pipraich">Pipraich</option>
                                                        <option value="Pratapgarh">Pratapgarh</option>
                                                        <option value="Pukhrayan">Pukhrayan</option>
                                                        <option value="Puranpur">Puranpur</option>
                                                        <option value="Purwa">Purwa</option>
                                                        <option value="Rabupura">Rabupura</option>
                                                        <option value="Radhakund">Radhakund</option>
                                                        <option value="Raebareli">Raebareli</option>
                                                        <option value="Rajapur">Rajapur</option>
                                                        <option value="Ramkola">Ramkola</option>
                                                        <option value="Ramnagar">Ramnagar</option>
                                                        <option value="Rampur">Rampur</option>
                                                        <option value="Rampura">Rampura</option>
                                                        <option value="Ranipur">Ranipur</option>
                                                        <option value="Rasra">Rasra</option>
                                                        <option value="Rasulabad">Rasulabad</option>
                                                        <option value="Rath">Rath</option>
                                                        <option value="Raya">Raya</option>
                                                        <option value="Renukut">Renukut</option>
                                                        <option value="Reoti">Reoti</option>
                                                        <option value="Richha">Richha</option>
                                                        <option value="Robertsganj">Robertsganj</option>
                                                        <option value="Rudarpur">Rudarpur</option>
                                                        <option value="Rura">Rura</option>
                                                        <option value="Sadabad">Sadabad</option>
                                                        <option value="Sadat">Sadat</option>
                                                        <option value="Safipur">Safipur</option>
                                                        <option value="Saharanpur">Saharanpur</option>
                                                        <option value="Sahaspur">Sahaspur</option>
                                                        <option value="Sahaswan">Sahaswan</option>
                                                        <option value="Sahawar">Sahawar</option>
                                                        <option value="Saidpur">Saidpur</option>
                                                        <option value="Sakit">Sakit</option>
                                                        <option value="Salon">Salon</option>
                                                        <option value="Sambhal">Sambhal</option>
                                                        <option value="Samthar">Samthar</option>
                                                        <option value="Sandi">Sandi</option>
                                                        <option value="Sandila">Sandila</option>
                                                        <option value="Sant Kabir Nagar">Sant Kabir Nagar</option>
                                                        <option value="Sant Ravi Das Nagar">Sant Ravi Das Nagar</option>
                                                        <option value="Sarai Akil">Sarai Akil</option>
                                                        <option value="Sarai Ekdil">Sarai Ekdil</option>
                                                        <option value="Sarai Mir">Sarai Mir</option>
                                                        <option value="Sarauli">Sarauli</option>
                                                        <option value="Sardhana">Sardhana</option>
                                                        <option value="Sarila">Sarila</option>
                                                        <option value="Sasni">Sasni</option>
                                                        <option value="Satrikh">Satrikh</option>
                                                        <option value="Saurikh">Saurikh</option>
                                                        <option value="Sector">Sector</option>
                                                        <option value="Seohara">Seohara</option>
                                                        <option value="Shahabad">Shahabad</option>
                                                        <option value="Shahganj">Shahganj</option>
                                                        <option value="Shahi">Shahi</option>
                                                        <option value="Shahjahanpur">Shahjahanpur</option>
                                                        <option value="Shahpur">Shahpur</option>
                                                        <option value="Shamli">Shamli</option>
                                                        <option value="Shamsabad">Shamsabad</option>
                                                        <option value="Shankargarh">Shankargarh</option>
                                                        <option value="Shergarh">Shergarh</option>
                                                        <option value="Sherkot">Sherkot</option>
                                                        <option value="Shikarpur">Shikarpur</option>
                                                        <option value="Shikohabad">Shikohabad</option>
                                                        <option value="Shishgarh">Shishgarh</option>
                                                        <option value="Shrawasti">Shrawasti</option>
                                                        <option value="Siddharthnagar">Siddharthnagar</option>
                                                        <option value="Sidhauli">Sidhauli</option>
                                                        <option value="Sidhpura">Sidhpura</option>
                                                        <option value="Sikandarabad">Sikandarabad</option>
                                                        <option value="Sikandarpur">Sikandarpur</option>
                                                        <option value="Sikandra">Sikandra</option>
                                                        <option value="Sikandra Rao">Sikandra Rao</option>
                                                        <option value="Sirathu">Sirathu</option>
                                                        <option value="Sirsa">Sirsa</option>
                                                        <option value="Sirsaganj">Sirsaganj</option>
                                                        <option value="Sirsi">Sirsi</option>
                                                        <option value="Sisauli">Sisauli</option>
                                                        <option value="Siswa Bazar">Siswa Bazar</option>
                                                        <option value="Sitapur">Sitapur</option>
                                                        <option value="Sonbhadra">Sonbhadra</option>
                                                        <option value="Soron">Soron</option>
                                                        <option value="Suar">Suar</option>
                                                        <option value="Sultanpur">Sultanpur</option>
                                                        <option value="Surianwan">Surianwan</option>
                                                        <option value="Tajpur">Tajpur</option>
                                                        <option value="Talbahat">Talbahat</option>
                                                        <option value="Talgram">Talgram</option>
                                                        <option value="Tanda">Tanda</option>
                                                        <option value="Thakurdwara">Thakurdwara</option>
                                                        <option value="Thana Bhawan">Thana Bhawan</option>
                                                        <option value="Tikaitnagar">Tikaitnagar</option>
                                                        <option value="Tikri">Tikri</option>
                                                        <option value="Tilhar">Tilhar</option>
                                                        <option value="Tindwari">Tindwari</option>
                                                        <option value="Titron">Titron</option>
                                                        <option value="Tori-Fatehpur">Tori-Fatehpur</option>
                                                        <option value="Tulsipur">Tulsipur</option>
                                                        <option value="Tundla">Tundla</option>
                                                        <option value="Ugu">Ugu</option>
                                                        <option value="Ujhani">Ujhani</option>
                                                        <option value="Ūn">Ūn</option>
                                                        <option value="Unnao">Unnao</option>
                                                        <option value="Usehat">Usehat</option>
                                                        <option value="Utraula">Utraula</option>
                                                        <option value="Varanasi">Varanasi</option>
                                                        <option value="Vrindavan">Vrindavan</option>
                                                        <option value="Wazirganj">Wazirganj</option>
                                                        <option value="Zafarabad">Zafarabad</option>
                                                        <option value="Zaidpur">Zaidpur</option>
                                                        <option value="Zamania">Zamania</option>
                                           

                            </select>                      
                        </div>
                        <div class="form-fields mt-3" style="text-transform:none;" >
                            <!--<div class="col-12">-->
                            <input class="col-9" type="text"  id="owner" name="owner" value="" placeholder="Shop Name (optional)">
                            <!--</div>-->
                        </div>
                       
                        <div class="submit">
                            <button class="showcar" id="search" type="submit" >Show cars</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- home section ended -->
        
        
        
        
           

        <!-- our tariff -->

        <div class="main-tariff">
            <h1>our <span>tarrif</span></h1>
                    <div id="show"></div>

            <div class="inner-tarrif col-12" id="hide">
                <div class="tarrif-container">
                    <div class="inner-box">
                        <img src="images/image1.png" alt="" />
                        <h2>economy class</h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat
                            illum officia fugiat, autem facere iste repellendus omnis nemo
                            dolore
                        </p>
                        <h3>price: $3 /-</h3>
                        <a href="#">order now</a>
                    </div>
                </div>

                <div class="tarrif-container col-lg-4 col-md-6">
                    <div class="inner-box">
                        <img src="images/image1.png" alt="" />
                        <h2 class="heading-yellow">economy class</h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat
                            illum officia fugiat, autem facere iste repellendus omnis nemo
                            dolore
                        </p>
                        <h3 class="yellw-section">price: $3 /-</h3>
                        <a href="#" class="btn-yellow">order now</a>
                    </div>
                </div>

                <div class="tarrif-container col-lg-4 col-md-6">
                    <div class="inner-box">
                        <img src="images/image1.png" alt="" />
                        <h2>economy class</h2>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat
                            illum officia fugiat, autem facere iste repellendus omnis nemo
                            dolore
                        </p>
                        <h3>price: $3 /-</h3>
                        <a href="#">order now</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- our tariff ended -->

        <!-- fast booking -->
        <div class="fast-booking">
            <h1 class="fast-hading">we do best</h1>
            <h2>than you wish</h2>
            <div class="inner-fast">
                <div class="booking-content">
                    <div class="icon-fast">
                        <span><i class="fas fa-star"></i></span>
                    </div>
                    <div class="inner-fast-text">
                        <h1>fast booking</h1>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
                            debitis asperiores adipisci, totam volu
                        </p>
                    </div>
                </div>
                <div class="booking-content">
                    <div class="icon-fast">
                        <span><i class="fas fa-map-marker-alt"></i></span>
                    </div>
                    <div class="inner-fast-text">
                        <h1>fast booking</h1>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
                            debitis asperiores adipisci, totam volu
                        </p>
                    </div>
                </div>
                <div class="booking-content">
                    <div class="icon-fast">
                        <span><i class="fas fa-map-marker-alt"></i></span>
                    </div>
                    <div class="inner-fast-text">
                        <h1>fast booking</h1>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
                            debitis asperiores adipisci, totam volu
                        </p>
                    </div>
                </div>
                <div class="booking-content">
                    <div class="icon-fast">
                        <span><i class="fas fa-map-marker-alt"></i></span>
                    </div>
                    <div class="inner-fast-text">
                        <h1>fast booking</h1>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
                            debitis asperiores adipisci, totam volu
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- fast booking end -->

        <div class="testimonials">
            <h1 class="heading-test">happy clients</h1>
            <div class="main-testimonials">
                <div class="inner-test">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
                        veritatis fugit magnam esse, amet adipisci eaque dolore explicabo
                        quidem laudantium ad, enim, obcaecati optio? Harum porro delectus
                        accusamus assumenda ullam.
                    </p>
                    <div class="clients">
                        <img src="images/jhon.png" alt="" />
                        <h1>jhone doe</h1>
                    </div>
                </div>
                <div class="inner-test">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
                        veritatis fugit magnam esse, amet adipisci eaque dolore explicabo
                        quidem laudantium ad, enim, obcaecati optio? Harum porro delectus
                        accusamus assumenda ullam.
                    </p>
                    <div class="clients">
                        <img src="images/jhon.png" alt="" />
                        <h1>jhone doe</h1>
                    </div>
                </div>
            </div>
        </div>


        
        <%@include file="include/footer.jsp" %>
        <!-- MDB -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
       <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
        <script src="js/script.js"></script>
        <script>
        $("#search").click(function() {
         var city= $('#city').val();
         var owner = $('#owner').val();
//         show.value = show; 
         $.ajax({
            url: "CarShow.jsp",
            type: 'POST',
            data: {city: city , owner: owner},
            success: function(data) {
             
                 $('#show').html(data);
                 $('#hide').hide();
                 
//                 alert(data);
//                  var show = data;
//                  
                
            }
        });
    
});
   
</script>
    </body>
</html>

<!-- <div class="myform">
                <div class="heading">
                    <h2>book cab</h2>
                </div>
                <div class="myfields">
                    <input type="text" placeholder="when">
                    <input type="text" placeholder="when">
                    <input type="text" placeholder="when">
                    <input type="text" placeholder="when">
                    <input type="text" placeholder="when">
                    <input type="text" placeholder="when">
                </div>
                <a href="#">Submit</a>
            </div> -->
