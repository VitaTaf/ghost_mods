.class public Lcom/android/settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private final DELAY_TO_START_WIPE_MS:I

.field private final SHOW_PROGRESS_DIALOG:I

.field private final START_WIPE_PROCESS:I

.field final handler:Landroid/os/Handler;

.field private mContentView:Landroid/view/View;

.field private mErasePersonalContent:Z

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->SHOW_PROGRESS_DIALOG:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->START_WIPE_PROCESS:I

    .line 71
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->DELAY_TO_START_WIPE_MS:I

    .line 79
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/android/settings/MasterClearConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$2;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)Landroid/service/persistentdata/PersistentDataBlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClearConfirm;Landroid/service/persistentdata/PersistentDataBlockManager;)Landroid/service/persistentdata/PersistentDataBlockManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;
    .param p1, "x1"    # Landroid/service/persistentdata/PersistentDataBlockManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/MasterClearConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClearConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private doMasterClear()V
    .locals 6

    .prologue
    .line 127
    iget-boolean v4, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v4, :cond_0

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.REASON"

    const-string v5, "MasterClearConfirm"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    :goto_0
    return-void

    .line 133
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    const-string v4, "android.intent.extra.REASON"

    const-string v5, "MasterClearConfirm"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v4, "wipeDataCacheOnly"

    iget-boolean v5, p0, Lcom/android/settings/MasterClearConfirm;->mErasePersonalContent:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 141
    .local v2, "resetBP":Z
    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.programmenu.MODEM_FACTORY_RESET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "resetIntent":Landroid/content/Intent;
    const-string v4, "com.motorola.programmenu"

    const-string v5, "com.motorola.programmenu.ResetActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v4, "skip_user_confirmation"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string v4, "wipeDataCacheOnly"

    iget-boolean v5, p0, Lcom/android/settings/MasterClearConfirm;->mErasePersonalContent:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "activityNotFound":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090490

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090491

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 186
    if-eqz v0, :cond_0

    const-string v1, "wipeDataCacheOnly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mErasePersonalContent:Z

    .line 188
    return-void

    :cond_1
    move v1, v2

    .line 184
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const v0, 0x7f040064

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const v0, 0x7f040063

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
