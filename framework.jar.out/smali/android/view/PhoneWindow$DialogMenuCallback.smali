.class final Landroid/view/PhoneWindow$DialogMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogMenuCallback"
.end annotation


# instance fields
.field private mFeatureId:I

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Landroid/view/PhoneWindow;


# direct methods
.method public constructor <init>(Landroid/view/PhoneWindow;I)V
    .locals 0
    .param p2, "featureId"    # I

    .prologue
    .line 4665
    iput-object p1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4666
    iput p2, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    .line 4667
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 4670
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 4671
    invoke-virtual {p0, p1}, Landroid/view/PhoneWindow$DialogMenuCallback;->onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 4674
    :cond_0
    if-eqz p2, :cond_3

    .line 4675
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4676
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4677
    iget v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4680
    :cond_1
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1200(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 4681
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    # invokes: Landroid/view/PhoneWindow;->dismissContextMenu()V
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$2800(Landroid/view/PhoneWindow;)V

    .line 4685
    :cond_2
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v1, :cond_3

    .line 4686
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 4687
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 4690
    .end local v0    # "callback":Landroid/view/Window$Callback;
    :cond_3
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 4693
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4694
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4695
    iget v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4697
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 4700
    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4701
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 4706
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 4709
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 4718
    :goto_0
    return v0

    .line 4712
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 4715
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 4716
    iget-object v0, p0, Landroid/view/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 4718
    const/4 v0, 0x1

    goto :goto_0
.end method