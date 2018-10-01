.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_TLS_1_2:Ljava/lang/String; = "\"tls_disable_tlsv1_2=1\""

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENABLE_TLS_1_2:Ljava/lang/String; = "\"tls_disable_tlsv1_2=0\""

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE1_KEY:Ljava/lang/String; = "phase1"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"


# instance fields
.field private mCaCert:Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTls12Enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 130
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # Ljava/security/PrivateKey;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    return p1
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .prologue
    .line 719
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    .end local p3    # "defaultIndex":I
    :cond_0
    :goto_0
    return p3

    .line 720
    .restart local p3    # "defaultIndex":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 721
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p3, v0

    goto :goto_0

    .line 720
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    .line 705
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 700
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 701
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 703
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 165
    if-eqz p2, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 168
    .local v0, "certBytes":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    const-string v0, "altsubject_match"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    const-string v0, "anonymous_identity"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    const-string v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    const-string v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    const-string v0, "domain_suffix_match"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v2, "eap"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 733
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 741
    :goto_0
    return-object v1

    .line 737
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 741
    goto :goto_0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    const-string/jumbo v0, "identity"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 685
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v3, "eap"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    .local v0, "eap":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "phase2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 689
    .local v1, "phase2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v3, "eap"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eap":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 692
    .restart local v0    # "eap":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v3, "phase2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "phase2":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 695
    .restart local v1    # "phase2":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    const-string/jumbo v0, "password"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "phase2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "phase2Method":Ljava/lang/String;
    const-string v1, "auth="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "auth="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    const-string/jumbo v0, "plmn"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    const-string/jumbo v0, "realm"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    const-string/jumbo v0, "subject_match"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTls12Enable()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    return v0
.end method

.method public resetCaCertificate()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    .line 497
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 572
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 573
    return-void
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string v0, "altsubject_match"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "anonymous_identity"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 473
    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_0

    .line 475
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 508
    const-string v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v0, "key_id"

    const-string v1, "USRPKEY_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "engine"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "engine_id"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "engine"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 542
    if-eqz p2, :cond_2

    .line 543
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    if-nez p1, :cond_1

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client cert without a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Private key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 555
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 556
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    .prologue
    .line 296
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerWifiManager()Landroid/net/wifi/HwInnerWifiManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/HwInnerWifiManager;->setWifiEnterpriseConfigEapMethod(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 300
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 311
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "eap"

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "proactive_key_caching"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string/jumbo v0, "identity"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string/jumbo v0, "password"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 4
    .param p1, "phase2Method"    # I

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase2"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_0
    return-void

    .line 368
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string/jumbo v0, "plmn"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string/jumbo v0, "realm"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string/jumbo v0, "subject_match"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setTls12Enable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 326
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "phase1"

    if-eqz p1, :cond_0

    const-string v0, "\"tls_disable_tlsv1_2=0\""

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void

    .line 326
    :cond_0
    const-string v0, "\"tls_disable_tlsv1_2=1\""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 776
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 780
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "identity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    const-string/jumbo v4, "password"

    if-ne v1, v4, :cond_1

    const-string v3, "<removed>"

    .line 786
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 785
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_1

    .line 788
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 150
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_1

    .line 151
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 153
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 161
    iget-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 161
    goto :goto_2
.end method
