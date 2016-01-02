.class public Lcom/android/systemui/recents/RecentsResizeTaskDialog;
.super Landroid/app/DialogFragment;
.source "RecentsResizeTaskDialog.java"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

.field private mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mResizeTaskDialogContent:Landroid/view/View;

.field private mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTaskToResize:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 1
    .param p1, "mgr"    # Landroid/app/FragmentManager;
    .param p2, "activity"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

    .line 63
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->placeTasks(I)V

    return-void
.end method

.method private createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 78
    const v0, 0x7f0c026a

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 79
    const v0, 0x7f040061

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$3;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$4;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$5;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0c026b

    new-instance v1, Lcom/android/systemui/recents/RecentsResizeTaskDialog$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$6;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    return-void
.end method

.method private placeTasks(I)V
    .locals 4
    .param p1, "arrangement"    # I

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    .local v0, "focusedBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 128
    .local v1, "otherBounds":Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resizeTask(ILandroid/graphics/Rect;)V

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resizeTask(ILandroid/graphics/Rect;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->dismiss()V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchTask(Lcom/android/systemui/recents/model/Task;)Z

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchTask(Lcom/android/systemui/recents/model/Task;)Z

    .line 167
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 131
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 135
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 139
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 143
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 147
    :pswitch_4
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "otherBounds":Landroid/graphics/Rect;
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .restart local v1    # "otherBounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 172
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 173
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 2
    .param p1, "mainTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "rv"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsView;->getNextTaskOrTopTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mNextTaskToResize:Lcom/android/systemui/recents/model/Task;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsResizeTaskDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method
