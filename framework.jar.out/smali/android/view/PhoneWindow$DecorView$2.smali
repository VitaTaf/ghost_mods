.class Landroid/view/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PhoneWindow$DecorView;->updateColorViewInt(Landroid/view/PhoneWindow$ColorViewState;IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/PhoneWindow$DecorView;

.field final synthetic val$state:Landroid/view/PhoneWindow$ColorViewState;


# direct methods
.method constructor <init>(Landroid/view/PhoneWindow$DecorView;Landroid/view/PhoneWindow$ColorViewState;)V
    .locals 0

    .prologue
    .line 2989
    iput-object p1, p0, Landroid/view/PhoneWindow$DecorView$2;->this$1:Landroid/view/PhoneWindow$DecorView;

    iput-object p2, p0, Landroid/view/PhoneWindow$DecorView$2;->val$state:Landroid/view/PhoneWindow$ColorViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$2;->val$state:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v0, v0, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2993
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$2;->val$state:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v0, v0, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2994
    return-void
.end method
