.class public Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryGroupEccEntry"
.end annotation


# static fields
.field public static final COUNTRY_ISO_ATTR:Ljava/lang/String; = "CountryISO"

.field public static final COUNTY_GROUP_ECC_CONFIG_PATH:Ljava/lang/String; = "/system/etc/country_group_emergency_number_config.xml"

.field public static final ECC_ENTRY_TAG:Ljava/lang/String; = "CountryGroup"

.field public static final ECC_ONLY_ATTR:Ljava/lang/String; = "NoSIMOnly3GPPECC"

.field public static final GROUP_CODE_ATTR:Ljava/lang/String; = "GroupCode"

.field public static final IN_SERVICE_ECC_ATTR:Ljava/lang/String; = "InServiceECC"

.field public static final SHOW_ENUI_ATTR:Ljava/lang/String; = "ShowENUI"


# instance fields
.field private mCountryISO:Ljava/lang/String;

.field private mGroupCode:Ljava/lang/String;

.field private mInServiceECC:Z

.field private mNoSIMOnly3GPPECC:Z

.field private mShowENUI:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mGroupCode:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mCountryISO:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mNoSIMOnly3GPPECC:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mShowENUI:Z

    .line 129
    iput-boolean v2, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mInServiceECC:Z

    .line 131
    return-void
.end method


# virtual methods
.method public getCountryISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mCountryISO:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mGroupCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInServiceECC()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mInServiceECC:Z

    return v0
.end method

.method public getNoSIMOnly3GPPECC()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mNoSIMOnly3GPPECC:Z

    return v0
.end method

.method public getShowENUI()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mShowENUI:Z

    return v0
.end method

.method public setCountryISO(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryISO"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mCountryISO:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setGroupCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupCode"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mGroupCode:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setInServiceECC(Z)V
    .locals 0
    .param p1, "inServiceECC"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mInServiceECC:Z

    .line 147
    return-void
.end method

.method public setNoSIMOnly3GPPECC(Z)V
    .locals 0
    .param p1, "noSIMOnly3GPPECC"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mNoSIMOnly3GPPECC:Z

    .line 141
    return-void
.end method

.method public setShowENUI(Z)V
    .locals 0
    .param p1, "showENUI"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->mShowENUI:Z

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nGroupCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->getGroupCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->getCountryISO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NoSIMOnly3GPPECC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->getNoSIMOnly3GPPECC()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ShowENUI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->getShowENUI()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InServiceECC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$CountryGroupEccEntry;->getInServiceECC()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
