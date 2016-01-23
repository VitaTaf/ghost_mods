.class public Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AuthenticatorDescriptionExtCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;,
        Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

.field private static sAttributeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    .line 34
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    invoke-direct {v0, v1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;-><init>(Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$1;)V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "accountType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "hideAccount"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "hideAuthenticator"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "showSyncOption"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "removeAllowed"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "editSettingActivity"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "accountDisplayName"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v2, "com.motorola.accounts.AccountHelper"

    const-string v3, "com.motorola.accounts.AccountHelper"

    const-string v4, "account-authenticator-ext"

    sget-object v5, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sSerializer:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    invoke-direct {v0, p0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    .line 75
    const-string v0, "AuthenticatorDescriptionExtCache"

    const-string v1, "New instance of AuthenticatorDescriptionExtCache created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    sget-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->instance:Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;

    return-object v0
.end method

.method private static isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 88
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 98
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 91
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v3, "com.motorola.motosignature.app"

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move v1, v2

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 21
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "accType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 106
    .local v15, "isHidden":Z
    const/4 v14, 0x0

    .line 107
    .local v14, "isAuthHidden":Z
    const/16 v18, 0x1

    .line 108
    .local v18, "syncAvailable":Z
    const/4 v7, 0x1

    .line 109
    .local v7, "removeAllowed":Z
    const/4 v8, 0x0

    .line 110
    .local v8, "accDisplayName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, "settingActivity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 113
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->isOwner()Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 118
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    move/from16 v6, v18

    .end local v18    # "syncAvailable":Z
    .local v6, "syncAvailable":Z
    move v5, v14

    .end local v14    # "isAuthHidden":Z
    .local v5, "isAuthHidden":Z
    move v4, v15

    .line 184
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "isHidden":Z
    .local v4, "isHidden":Z
    :goto_0
    return-object v2

    .line 119
    .end local v4    # "isHidden":Z
    .end local v5    # "isAuthHidden":Z
    .end local v6    # "syncAvailable":Z
    .restart local v14    # "isAuthHidden":Z
    .restart local v15    # "isHidden":Z
    .restart local v18    # "syncAvailable":Z
    :catch_0
    move-exception v11

    .line 120
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 121
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 122
    .local v16, "name":Ljava/lang/String;
    sget-object v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_0

    .line 123
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 126
    .end local v16    # "name":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_2
    move/from16 v6, v18

    .end local v18    # "syncAvailable":Z
    .restart local v6    # "syncAvailable":Z
    move v5, v14

    .end local v14    # "isAuthHidden":Z
    .restart local v5    # "isAuthHidden":Z
    move v4, v15

    .end local v15    # "isHidden":Z
    .restart local v4    # "isHidden":Z
    goto :goto_0

    .end local v4    # "isHidden":Z
    .end local v5    # "isAuthHidden":Z
    .end local v6    # "syncAvailable":Z
    .restart local v14    # "isAuthHidden":Z
    .restart local v15    # "isHidden":Z
    .restart local v18    # "syncAvailable":Z
    :cond_2
    new-instance v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "i":I
    :cond_3
    const/4 v2, 0x0

    move/from16 v6, v18

    .end local v18    # "syncAvailable":Z
    .restart local v6    # "syncAvailable":Z
    move v5, v14

    .end local v14    # "isAuthHidden":Z
    .restart local v5    # "isAuthHidden":Z
    move v4, v15

    .end local v15    # "isHidden":Z
    .restart local v4    # "isHidden":Z
    goto :goto_0

    .line 134
    .end local v4    # "isHidden":Z
    .end local v5    # "isAuthHidden":Z
    .end local v6    # "syncAvailable":Z
    .restart local v14    # "isAuthHidden":Z
    .restart local v15    # "isHidden":Z
    .restart local v18    # "syncAvailable":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "i":I
    move/from16 v6, v18

    .end local v18    # "syncAvailable":Z
    .restart local v6    # "syncAvailable":Z
    move v5, v14

    .end local v14    # "isAuthHidden":Z
    .restart local v5    # "isAuthHidden":Z
    move v4, v15

    .end local v15    # "isHidden":Z
    .restart local v4    # "isHidden":Z
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 135
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 137
    .restart local v16    # "name":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->sAttributeMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 134
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 139
    :pswitch_0
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    goto :goto_4

    .line 142
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v0, v12, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v4

    .line 143
    goto :goto_4

    .line 145
    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v0, v12, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    .line 146
    goto :goto_4

    .line 148
    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v0, v12, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    .line 149
    goto :goto_4

    .line 151
    :pswitch_4
    move-object/from16 v0, p3

    invoke-interface {v0, v12, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    .line 152
    goto :goto_4

    .line 154
    :pswitch_5
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 157
    .local v13, "id":I
    if-eqz v13, :cond_5

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 163
    .end local v13    # "id":I
    :pswitch_6
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_4

    .line 168
    :catch_1
    move-exception v11

    .line 169
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "AuthenticatorDescriptionExtCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found an unsupported tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " value = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 174
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "name":Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 175
    const/4 v9, 0x0

    .line 177
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    .line 178
    const/4 v8, 0x0

    .line 180
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 181
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 184
    :cond_9
    new-instance v2, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct/range {v2 .. v9}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExtCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    move-result-object v0

    return-object v0
.end method
