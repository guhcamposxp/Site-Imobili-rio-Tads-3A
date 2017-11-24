package Data;

public class ContratoData {

    /**
     * @return the valorContrato
     */
    public String getValorContrato() {
        return valorContrato;
    }

    /**
     * @param valorContrato the valorContrato to set
     */
    public void setValorContrato(String valorContrato) {
        this.valorContrato = valorContrato;
    }

    private int idContrato;
    private int idComprador;
    private int idImovel;
    private int idProprietario;
    private int idFilial;
    private int idCorretor;
    private String dataContrato;
    private String valorContrato;

    /**
     * @return the idContrato
     */
    public int getIdContrato() {
        return idContrato;
    }

    /**
     * @param idContrato the idContrato to set
     */
    public void setIdContrato(int idContrato) {
        this.idContrato = idContrato;
    }

    /**
     * @return the idComprador
     */
    public int getIdComprador() {
        return idComprador;
    }

    /**
     * @param idComprador the idComprador to set
     */
    public void setIdComprador(int idComprador) {
        this.idComprador = idComprador;
    }

    /**
     * @return the idImovel
     */
    public int getIdImovel() {
        return idImovel;
    }

    /**
     * @param idImovel the idImovel to set
     */
    public void setIdImovel(int idImovel) {
        this.idImovel = idImovel;
    }

    /**
     * @return the idProprietario
     */
    public int getIdProprietario() {
        return idProprietario;
    }

    /**
     * @param idProprietario the idProprietario to set
     */
    public void setIdProprietario(int idProprietario) {
        this.idProprietario = idProprietario;
    }

    /**
     * @return the dataContrato
     */
    public String getDataContrato() {
        return dataContrato;
    }

    /**
     * @param dataContrato the dataContrato to set
     */
    public void setDataContrato(String dataContrato) {
        this.dataContrato = dataContrato;
    }

    /**
     * @return the idFilial
     */
    public int getIdFilial() {
        return idFilial;
    }

    /**
     * @param idFilial the idFilial to set
     */
    public void setIdFilial(int idFilial) {
        this.idFilial = idFilial;
    }

    /**
     * @return the idCorretor
     */
    public int getIdCorretor() {
        return idCorretor;
    }

    /**
     * @param idCorretor the idCorretor to set
     */
    public void setIdCorretor(int idCorretor) {
        this.idCorretor = idCorretor;
    }
}
