.class public Lcom/android/systemui/recents/RecentsResizeTaskDialog;
.super Landroid/app/DialogFragment;
.source "RecentsResizeTaskDialog.java"


# instance fields
.field mFragmentManager:Landroid/app/FragmentManager;

.field mResizeTaskDialogContent:Landroid/view/View;

.field mTaskToResize:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/view/View;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getDimensionFromEditText(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method private createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 72
    const-string v1, "Resize Task - Enter new dimensions"

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    const v1, 0x7f040062

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 76
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v2, 0x7f0f0161

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->setDimensionInEditText(Landroid/view/View;II)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v2, 0x7f0f0162

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->setDimensionInEditText(Landroid/view/View;II)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v2, 0x7f0f0163

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->setDimensionInEditText(Landroid/view/View;II)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    const v2, 0x7f0f0164

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->setDimensionInEditText(Landroid/view/View;II)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 81
    const-string v1, "Resize Task"

    new-instance v2, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;

    invoke-direct {v2, p0, p1, p4}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    return-void
.end method

.method private getDimensionFromEditText(Landroid/view/View;I)I
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDimensionInEditText(Landroid/view/View;II)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "value"    # I

    .prologue
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 123
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 124
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTaskToResize:Lcom/android/systemui/recents/model/Task;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsResizeTaskDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    return-void
.end method
