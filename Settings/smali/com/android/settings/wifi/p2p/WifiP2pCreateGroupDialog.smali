.class public Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pCreateGroupDialog.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static P2P_SSID_PREFIX_SIZE:I


# instance fields
.field filter:Landroid/text/InputFilter;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mEditSsid:Landroid/widget/EditText;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mGroupCreateView:Landroid/view/View;

.field private mGroupListSize:I

.field private mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedGroupList:Landroid/widget/Spinner;

.field private mSetCurrListPosition:I

.field private mWifiP2pGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xa

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->P2P_SSID_PREFIX_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mFilter:Landroid/content/IntentFilter;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->filter:Landroid/text/InputFilter;

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupListSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->P2P_SSID_PREFIX_SIZE:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private compareBytes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 266
    :cond_1
    :goto_0
    return v3

    .line 251
    :cond_2
    sget v5, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->P2P_SSID_PREFIX_SIZE:I

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 253
    const-string v5, "(DIRECT-[0-9a-zA-Z]{2}-([\\\\]x[0-9a-fA-F]{2}){1,})"

    invoke-static {v5, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 254
    .local v2, "pattern_match":Z
    if-eqz v2, :cond_3

    .line 255
    const-string v5, "%x"

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "hex1":Ljava/lang/String;
    sget v5, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->P2P_SSID_PREFIX_SIZE:I

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\x"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "hex2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 261
    goto :goto_0

    .line 264
    .end local v0    # "hex1":Ljava/lang/String;
    .end local v1    # "hex2":Ljava/lang/String;
    :cond_3
    const-string v3, "WifiP2pGroupCreateDialog"

    const-string v5, "compareBytes, Pattern does not match"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 266
    goto :goto_0
.end method

.method private getNetworkId(Ljava/lang/String;)I
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 271
    .local v0, "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    .line 275
    .end local v0    # "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x2

    goto :goto_0
.end method

.method private isAscii(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "ret":Z
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 95
    .local v0, "asciiEncoder":Ljava/nio/charset/CharsetEncoder;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 288
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-le v1, v2, :cond_2

    .line 294
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e8

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupCreateView:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupCreateView:Landroid/view/View;

    const v2, 0x7f0f0255

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupCreateView:Landroid/view/View;

    const v2, 0x7f0f0256

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->isAscii(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    new-array v2, v3, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->filter:Landroid/text/InputFilter;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    const v1, 0x7f090027

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->setTitle(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupCreateView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->setView(Landroid/view/View;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 127
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 131
    const-string v1, "WifiP2pGroupCreateDialog"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 137
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f09055e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f09055f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 199
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "WifiP2pGroupCreateDialog"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 302
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    .line 303
    if-nez p3, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

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
    .line 313
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 8
    .param p1, "groups"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "array_index":I
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 219
    .local v4, "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v4    # "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupListSize:I

    .line 225
    iget v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupListSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    .line 226
    .local v3, "array_spinner":[Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "array_index":I
    .local v2, "array_index":I
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 227
    iget v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupListSize:I

    if-lez v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .end local v2    # "array_index":I
    .restart local v1    # "array_index":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 229
    .restart local v4    # "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 231
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->compareBytes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    if-nez v6, :cond_2

    .line 233
    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    .line 235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 236
    goto :goto_1

    .line 237
    .end local v4    # "g":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0400ec

    invoke-direct {v0, v6, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 239
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 241
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    iget v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSetCurrListPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 247
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;
    :goto_2
    return-void

    .line 243
    .end local v1    # "array_index":I
    .restart local v2    # "array_index":I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 244
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    move v1, v2

    .end local v2    # "array_index":I
    .restart local v1    # "array_index":I
    goto :goto_2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 280
    return-void
.end method
