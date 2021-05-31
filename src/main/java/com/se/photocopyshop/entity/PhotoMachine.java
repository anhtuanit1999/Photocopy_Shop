package com.se.photocopyshop.entity;

import org.apache.xpath.operations.String;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name="photocopy_machine")
public class PhotoMachine {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "machine_name")
    private String machineName;

    @Column(name = "machine_type")
    private String machineType;

    @Column(name = "machine_feature")
    private String machineFeature;

    @Column(name = "paper_tray")
    private String paperTray;

    @Column(name = "paper_size")
    private String paperSize;

    @Column(name = "print_speed")
    private String printSpeed;

    @Column(name = "is_reverse_the_clone")
    private boolean isReverse;

    @Column(name = "has_ARDF")
    private boolean hasARDF;

    @Column(name = "communication_gate")
    private String communicationGate;

    @Column(name = "ink")
    private String ink;

    @Column(name = "guarantee")
    private String guarantee;

    @Column(name = "machine_status")
    private String machineStatus;

    @OneToOne
    @JoinColumn(name = "category_id", nullable = false)
    private ProductCategory categoryId;

    @Column(name = "create_at")
    private Date createAt;

    @OneToOne
    @JoinColumn(name = "create_by", nullable = false)
    private User createBy;

    @Column(name = "update_at")
    private Date updateAt;

    @OneToOne
    @JoinColumn(name = "update_by")
    private User updateBy;

    @Column(name = "price")
    private double price;

    public PhotoMachine() {
    }

    public PhotoMachine(int id, String machineName, String machineType, String machineFeature, String paperTray,
                        String paperSize, String printSpeed, boolean isReverse, boolean hasARDF, String communicationGate,
                        String ink, String guarantee, String machineStatus, ProductCategory categoryId, Date createAt,
                        User createBy, Date updateAt, User updateBy, double price) {
        this.id = id;
        this.machineName = machineName;
        this.machineType = machineType;
        this.machineFeature = machineFeature;
        this.paperTray = paperTray;
        this.paperSize = paperSize;
        this.printSpeed = printSpeed;
        this.isReverse = isReverse;
        this.hasARDF = hasARDF;
        this.communicationGate = communicationGate;
        this.ink = ink;
        this.guarantee = guarantee;
        this.machineStatus = machineStatus;
        this.categoryId = categoryId;
        this.createAt = createAt;
        this.createBy = createBy;
        this.updateAt = updateAt;
        this.updateBy = updateBy;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMachineName() {
        return machineName;
    }

    public void setMachineName(String machineName) {
        this.machineName = machineName;
    }

    public String getMachineType() {
        return machineType;
    }

    public void setMachineType(String machineType) {
        this.machineType = machineType;
    }

    public String getMachineFeature() {
        return machineFeature;
    }

    public void setMachineFeature(String machineFeature) {
        this.machineFeature = machineFeature;
    }

    public String getPaperTray() {
        return paperTray;
    }

    public void setPaperTray(String paperTray) {
        this.paperTray = paperTray;
    }

    public String getPaperSize() {
        return paperSize;
    }

    public void setPaperSize(String paperSize) {
        this.paperSize = paperSize;
    }

    public String getPrintSpeed() {
        return printSpeed;
    }

    public void setPrintSpeed(String printSpeed) {
        this.printSpeed = printSpeed;
    }

    public boolean isReverse() {
        return isReverse;
    }

    public void setReverse(boolean reverse) {
        isReverse = reverse;
    }

    public boolean isHasARDF() {
        return hasARDF;
    }

    public void setHasARDF(boolean hasARDF) {
        this.hasARDF = hasARDF;
    }

    public String getCommunicationGate() {
        return communicationGate;
    }

    public void setCommunicationGate(String communicationGate) {
        this.communicationGate = communicationGate;
    }

    public String getInk() {
        return ink;
    }

    public void setInk(String ink) {
        this.ink = ink;
    }

    public String getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(String guarantee) {
        this.guarantee = guarantee;
    }

    public String getMachineStatus() {
        return machineStatus;
    }

    public void setMachineStatus(String machineStatus) {
        this.machineStatus = machineStatus;
    }

    public ProductCategory getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(ProductCategory categoryId) {
        this.categoryId = categoryId;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public User getCreateBy() {
        return createBy;
    }

    public void setCreateBy(User createBy) {
        this.createBy = createBy;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public User getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(User updateBy) {
        this.updateBy = updateBy;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public java.lang.String toString() {
        return "PhotoMachine{" +
                "id=" + id +
                ", machineName=" + machineName +
                ", machineType=" + machineType +
                ", machineFeature=" + machineFeature +
                ", paperTray=" + paperTray +
                ", paperSize=" + paperSize +
                ", printSpeed=" + printSpeed +
                ", isReverse=" + isReverse +
                ", hasARDF=" + hasARDF +
                ", communicationGate=" + communicationGate +
                ", ink=" + ink +
                ", guarantee=" + guarantee +
                ", machineStatus=" + machineStatus +
                ", categoryId=" + categoryId +
                ", createAt=" + createAt +
                ", createBy=" + createBy +
                ", updateAt=" + updateAt +
                ", updateBy=" + updateBy +
                ", price=" + price +
                '}';
    }
}
