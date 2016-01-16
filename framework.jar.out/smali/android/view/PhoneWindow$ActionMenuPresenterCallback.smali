.class final Landroid/view/PhoneWindow$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PhoneWindow;


# direct methods
.method private constructor <init>(Landroid/view/PhoneWindow;)V
    .locals 0

    .prologue
    .line 2149
    iput-object p1, p0, Landroid/view/PhoneWindow$ActionMenuPresenterCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/PhoneWindow;Landroid/view/PhoneWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/PhoneWindow;
    .param p2, "x1"    # Landroid/view/PhoneWindow$1;

    .prologue
    .line 2149
    invoke-direct {p0, p1}, Landroid/view/PhoneWindow$ActionMenuPresenterCallback;-><init>(Landroid/view/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/view/PhoneWindow$ActionMenuPresenterCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 2163
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 2152
    iget-object v1, p0, Landroid/view/PhoneWindow$ActionMenuPresenterCallback;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2153
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 2154
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2155
    const/4 v1, 0x1

    .line 2157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
