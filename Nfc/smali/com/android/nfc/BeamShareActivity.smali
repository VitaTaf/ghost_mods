.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 225
    new-instance v0, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showNfcDialogAndExit(I)V
    .locals 4
    .param p1, "msgId"    # I

    .prologue
    .line 81
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/BeamShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 87
    new-instance v2, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    const v2, 0x1040013

    new-instance v3, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v3, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v2, 0x1040009

    new-instance v3, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v3, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 65
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const v0, 0x7f070029

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.SEND"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 141
    .local v4, "clipData":Landroid/content/ClipData;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v18

    if-lez v18, :cond_4

    .line 142
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 143
    invoke-virtual {v4, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 145
    .local v8, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 146
    .local v15, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "plainText":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 142
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    :cond_3
    if-eqz v11, :cond_2

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v6    # "i":I
    .end local v8    # "item":Landroid/content/ClipData$Item;
    .end local v11    # "plainText":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.SEND"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 159
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 160
    .restart local v15    # "uri":Landroid/net/Uri;
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 161
    .local v13, "text":Ljava/lang/CharSequence;
    if-eqz v15, :cond_6

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 191
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 192
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 195
    .local v16, "uriArray":[Landroid/net/Uri;
    const/4 v9, 0x0

    .line 196
    .local v9, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 198
    .restart local v15    # "uri":Landroid/net/Uri;
    :try_start_0
    const-string v18, "com.android.nfc"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numValidUris":I
    .local v10, "numValidUris":I
    :try_start_1
    aput-object v15, v16, v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v10

    .line 206
    .end local v10    # "numValidUris":I
    .restart local v9    # "numValidUris":I
    goto :goto_4

    .line 164
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "numValidUris":I
    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    .end local v16    # "uriArray":[Landroid/net/Uri;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v13, :cond_5

    .line 166
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_3

    .line 171
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 172
    .local v17, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 175
    .local v14, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_8

    .line 176
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 178
    .restart local v15    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_5

    .line 180
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_8
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 183
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 201
    .end local v14    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v17    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "numValidUris":I
    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriArray":[Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 202
    .local v5, "e":Ljava/lang/SecurityException;
    :goto_6
    const-string v18, "BeamShareActivity"

    const-string v19, "Security exception granting uri permission to NFC process."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v9, 0x0

    .line 207
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_9
    if-lez v9, :cond_a

    .line 208
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v18, 0x0

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 221
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "numValidUris":I
    .end local v16    # "uriArray":[Landroid/net/Uri;
    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto/16 :goto_0

    .line 211
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "numValidUris":I
    .restart local v16    # "uriArray":[Landroid/net/Uri;
    :cond_a
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_7

    .line 213
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "numValidUris":I
    .end local v16    # "uriArray":[Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 214
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_7

    .line 219
    :cond_c
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_7

    .line 201
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "numValidUris":I
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriArray":[Landroid/net/Uri;
    :catch_1
    move-exception v5

    move v9, v10

    .end local v10    # "numValidUris":I
    .restart local v9    # "numValidUris":I
    goto :goto_6
.end method

.method tryText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 133
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_0
.end method
