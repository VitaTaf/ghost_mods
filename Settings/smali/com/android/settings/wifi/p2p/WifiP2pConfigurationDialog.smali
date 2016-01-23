.class public Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pConfigurationDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field filter:Landroid/text/InputFilter;

.field private mAutoConnect:Landroid/widget/CheckBox;

.field private mAutoConnectText:Landroid/widget/TextView;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mDeviceBand:Landroid/widget/Spinner;

.field private mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

.field private mDeviceLimit:Landroid/widget/Spinner;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceTimeout:Landroid/widget/Spinner;

.field private final mIsBcmDevice:Z

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devName"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "WifiP2pConfigurationDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->LOGTAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->filter:Landroid/text/InputFilter;

    .line 91
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mIsBcmDevice:Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method private initP2pSettings()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_p2p_configuration"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "deviceConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 197
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 201
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 202
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->p2pAutoConnect:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v2

    if-nez v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->p2pAutoConnect:I

    if-ne v2, v6, :cond_5

    .line 222
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mIsBcmDevice:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 239
    :cond_2
    return-void

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 213
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 217
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setClickable(Z)V

    goto :goto_1

    .line 215
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 225
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 203
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private isAscii(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "ret":Z
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 81
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 85
    :goto_0
    return v2

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private validateDeviceName()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 265
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 266
    .local v0, "utf8DeviceName":[B
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->validateDeviceName()V

    .line 262
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400e7

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0250

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    .line 104
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0251

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0252

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    .line 106
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setInverseBackgroundForced(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f024e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->isAscii(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    new-array v3, v4, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->filter:Landroid/text/InputFilter;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 125
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "WifiP2pConfigurationDialog"

    const-string v3, "Failed to set up connection with wifi p2p service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 136
    :cond_0
    :goto_1
    const/4 v2, -0x1

    const v3, 0x7f090313

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 172
    const/4 v2, -0x2

    const v3, 0x7f090315

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->initP2pSettings()V

    .line 179
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 180
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    new-array v3, v4, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 133
    :cond_2
    const-string v2, "WifiP2pConfigurationDialog"

    const-string v3, "mWifiP2pManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 255
    return-void
.end method
