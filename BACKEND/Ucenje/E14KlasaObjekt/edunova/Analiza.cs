
namespace Ucenje.E14KlasaObjekt.edunova
{
    public class Analiza
    {
        public int Sifra { get; set; }
        public DateTime? Datum { get; set; }
        public decimal pHVrijednost { get; set; }
        public decimal Fosfor { get; set; }
        public decimal Kalij { get; set; }
        public decimal Magnezij { get; set; }
        public decimal Karbonati { get; set; }
        public decimal Humus { get; set; }
        public Analiticar Analiticar { get; set; } = new Analiticar();
        public UzorakTla UzorakTla { get; set; } = new UzorakTla();
    }
}
