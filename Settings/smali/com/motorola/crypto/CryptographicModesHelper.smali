.class public Lcom/motorola/crypto/CryptographicModesHelper;
.super Ljava/lang/Object;
.source "CryptographicModesHelper.java"


# static fields
.field private static sCryptographicModesClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/crypto/CryptographicModesHelper;->sCryptographicModesClass:Ljava/lang/Class;

    :try_start_0
    const-string v1, "com.motorola.android.cryptography.CryptographicMode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/motorola/crypto/CryptographicModesHelper;->sCryptographicModesClass:Ljava/lang/Class;

    const-string v1, "com.motorola.android.cryptograpy.CryptographicModesHelper"

    const-string v2, "Cryptographic modes supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e2":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .end local v0    # "e2":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .restart local v0    # "e2":Ljava/lang/ClassNotFoundException;
    const-string v1, "com.motorola.android.cryptograpy.CryptographicModesHelper"

    const-string v2, "Cryptographic modes are not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSelectedCryptographicMode()I
    .locals 4

    .prologue
    const-string v2, "persist.sys.openssl.ecm"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strCryptoMode":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "cryptographicMode":I
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v2, "persist.sys.openssl.ucm"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isCryptographicModesSupported()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/crypto/CryptographicModesHelper;->sCryptographicModesClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCryptographyEnforced()Z
    .locals 3

    .prologue
    const-string v1, "persist.sys.openssl.ecm"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "enforcedCryptoPropValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setUserMode(Ljava/lang/String;)V
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    const-string v0, "persist.sys.openssl.ucm"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
