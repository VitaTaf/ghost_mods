.class Landroid/view/PhoneWindow$ColorViewState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(IIIILjava/lang/String;II)V
    .locals 1
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "transitionName"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "hideWindowFlag"    # I

    .prologue
    .line 4749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4736
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 4737
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 4750
    iput p6, p0, Landroid/view/PhoneWindow$ColorViewState;->id:I

    .line 4751
    iput p1, p0, Landroid/view/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    .line 4752
    iput p2, p0, Landroid/view/PhoneWindow$ColorViewState;->translucentFlag:I

    .line 4753
    iput p3, p0, Landroid/view/PhoneWindow$ColorViewState;->verticalGravity:I

    .line 4754
    iput p4, p0, Landroid/view/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 4755
    iput-object p5, p0, Landroid/view/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    .line 4756
    iput p7, p0, Landroid/view/PhoneWindow$ColorViewState;->hideWindowFlag:I

    .line 4757
    return-void
.end method
