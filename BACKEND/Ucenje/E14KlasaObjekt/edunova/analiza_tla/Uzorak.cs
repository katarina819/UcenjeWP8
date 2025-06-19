
namespace Ucenje.E14KlasaObjekt.edunova
{
    public class UzorakTla
    {
        public int Sifra { get; set; }
        public decimal MasaUzorka { get; set; }
        public string VrstaTla { get; set; }
        public DateTime? Datum { get; set; }

        public Lokacija Lokacija { get; set; } = new Lokacija();
    }
}
