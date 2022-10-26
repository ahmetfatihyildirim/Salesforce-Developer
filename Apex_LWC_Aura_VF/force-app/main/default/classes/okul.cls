public class okul {
    
    //properties
    private String isim; // properties lerin public olması tercih edilmez
    //private olması best practice. Private yazmayarak da private yapmış oluruz.
    private Integer ogrenciSayisi;
    private static Integer toplamOgrenciSayisi;
    
    
    //constructor method
    public okul(String okulAdi){
        system.debug('Okul constructor is working....');
        setisim(okulAdi);
        ogrenciSayisi=0;
        toplamOgrenciSayisi=0;
        System.debug(isim + ' isimli okul oluşturuldu.');
    }
    
    
    //methods
    public void setisim(String okulAdi){
        isim=okulAdi;
    }
    public String getisim(){
        return isim;
    }
    public void setogrenciSayisi(Integer ogrSayisi){
        ogrenciSayisi=ogrSayisi;
        toplamOgrenciSayisi+=ogrenciSayisi;
    }
    public Integer getogrenciSayisi(){
        return ogrenciSayisi;
    }
    public static Integer gettoplamOgrenciSayisi(){
        return toplamOgrenciSayisi;
    }
    

}