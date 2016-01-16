.class Landroid/view/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PhoneWindow;


# direct methods
.method constructor <init>(Landroid/view/PhoneWindow;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Landroid/view/PhoneWindow$1;->this$0:Landroid/view/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Landroid/view/PhoneWindow$1;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$000(Landroid/view/PhoneWindow;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/view/PhoneWindow$1;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1, v0}, Landroid/view/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Landroid/view/PhoneWindow$1;->this$0:Landroid/view/PhoneWindow;

    # setter for: Landroid/view/PhoneWindow;->mInvalidatePanelMenuPosted:Z
    invoke-static {v1, v3}, Landroid/view/PhoneWindow;->access$102(Landroid/view/PhoneWindow;Z)Z

    .line 263
    iget-object v1, p0, Landroid/view/PhoneWindow$1;->this$0:Landroid/view/PhoneWindow;

    # setter for: Landroid/view/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1, v3}, Landroid/view/PhoneWindow;->access$002(Landroid/view/PhoneWindow;I)I

    .line 264
    return-void
.end method
