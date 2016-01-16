.class public final Lcom/android/nfc/NfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "NfcWifiProtectedSetup.java"


# static fields
.field public static final EXTRA_WIFI_CONFIG:Ljava/lang/String; = "com.android.nfc.WIFI_CONFIG_EXTRA"

.field private static final HEX_CHARS_PER_BYTE:I = 0x2

.field private static final MAX_NETWORK_KEY_SIZE_BYTES:I = 0x40

.field private static final MAX_SSID_SIZE_BYTES:I = 0x20

.field private static final NETWORK_KEY_ID:Ljava/lang/String; = "1027"

.field public static final NFC_TOKEN_MIME_TYPE:Ljava/lang/String; = "application/vnd.wfa.wsc"

.field private static final SIZE_FIELD_WIDTH:I = 0x4

.field private static final SSID_ID:Ljava/lang/String; = "1045"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x10

    .line 166
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 167
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 168
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 169
    .local v2, "value":I
    mul-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x4

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v0, v3

    .line 170
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v2, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v0, v3

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "value":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static hexStringToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "bigEndianHexString"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "val":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    or-int/2addr v1, v2

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 158
    shl-int/lit8 v1, v1, 0x4

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return v1
.end method

.method private static parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .locals 20
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    .line 80
    .local v12, "records":[Landroid/nfc/NdefRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 81
    aget-object v11, v12, v5

    .line 82
    .local v11, "record":Landroid/nfc/NdefRecord;
    new-instance v18, Ljava/lang/String;

    invoke-virtual {v11}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    const-string v19, "application/vnd.wfa.wsc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 83
    invoke-virtual {v11}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/nfc/NfcWifiProtectedSetup;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "hexStringPayload":Ljava/lang/String;
    const-string v18, "1045"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 87
    .local v17, "ssidStringIndex":I
    if-lez v17, :cond_2

    .line 88
    const-string v18, "1027"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 89
    .local v10, "networkKeyStringIndex":I
    if-lez v10, :cond_2

    .line 91
    const-string v18, "1045"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    .line 92
    const-string v18, "1027"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v10, v10, v18

    .line 96
    add-int/lit8 v18, v17, 0x4

    :try_start_0
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 102
    .local v15, "ssidSize":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/nfc/NfcWifiProtectedSetup;->hexStringToInt(Ljava/lang/String;)I

    move-result v16

    .line 103
    .local v16, "ssidSizeBytes":I
    const/16 v18, 0x20

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 148
    .end local v4    # "hexStringPayload":Ljava/lang/String;
    .end local v10    # "networkKeyStringIndex":I
    .end local v11    # "record":Landroid/nfc/NdefRecord;
    .end local v15    # "ssidSize":Ljava/lang/String;
    .end local v16    # "ssidSizeBytes":I
    .end local v17    # "ssidStringIndex":I
    :goto_1
    return-object v2

    .line 98
    .restart local v4    # "hexStringPayload":Ljava/lang/String;
    .restart local v10    # "networkKeyStringIndex":I
    .restart local v11    # "record":Landroid/nfc/NdefRecord;
    .restart local v17    # "ssidStringIndex":I
    :catch_0
    move-exception v3

    .line 99
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1

    .line 109
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "ssidSize":Ljava/lang/String;
    .restart local v16    # "ssidSizeBytes":I
    :cond_0
    add-int/lit8 v18, v10, 0x4

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 115
    .local v8, "networkKeySize":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/nfc/NfcWifiProtectedSetup;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    .line 116
    .local v9, "networkKeySizeBytes":I
    const/16 v18, 0x40

    move/from16 v0, v18

    if-le v9, v0, :cond_1

    .line 117
    const/4 v2, 0x0

    goto :goto_1

    .line 111
    .end local v8    # "networkKeySize":Ljava/lang/String;
    .end local v9    # "networkKeySizeBytes":I
    :catch_1
    move-exception v3

    .line 112
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v8    # "networkKeySize":Ljava/lang/String;
    .restart local v9    # "networkKeySizeBytes":I
    :cond_1
    add-int/lit8 v17, v17, 0x4

    .line 121
    add-int/lit8 v10, v10, 0x4

    .line 126
    :try_start_2
    div-int/lit8 v14, v17, 0x2

    .line 127
    .local v14, "ssidByteIndex":I
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v11}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v18

    add-int v19, v14, v16

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v14, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 130
    .local v13, "ssid":Ljava/lang/String;
    div-int/lit8 v7, v10, 0x2

    .line 131
    .local v7, "networkKeyByteIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v11}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v18

    add-int v19, v7, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v7, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    .local v6, "networkKey":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 139
    .local v2, "configuration":Landroid/net/wifi/WifiConfiguration;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 140
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 134
    .end local v2    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "networkKey":Ljava/lang/String;
    .end local v7    # "networkKeyByteIndex":I
    .end local v13    # "ssid":Ljava/lang/String;
    .end local v14    # "ssidByteIndex":I
    :catch_2
    move-exception v3

    .line 135
    .local v3, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 80
    .end local v3    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "hexStringPayload":Ljava/lang/String;
    .end local v8    # "networkKeySize":Ljava/lang/String;
    .end local v9    # "networkKeySizeBytes":I
    .end local v10    # "networkKeyStringIndex":I
    .end local v15    # "ssidSize":Ljava/lang/String;
    .end local v16    # "ssidSizeBytes":I
    .end local v17    # "ssidStringIndex":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 148
    .end local v11    # "record":Landroid/nfc/NdefRecord;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public static tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z
    .locals 7
    .param p0, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 57
    .local v0, "cachedNdefMessage":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 63
    .local v2, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_config_wifi"

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "configureNetworkIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    const/4 v3, 0x1

    goto :goto_0
.end method
