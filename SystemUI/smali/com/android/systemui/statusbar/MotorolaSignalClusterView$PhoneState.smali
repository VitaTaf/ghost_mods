.class Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "MotorolaSignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MotorolaSignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field private mIsMobileTypeIconWide:Z

.field private mMobileDataActivityContentDescription:Ljava/lang/String;

.field private mMobileDataActivityIconId:I

.field private mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileDataTypeContentDescription:Ljava/lang/String;

.field private mMobileDataTypeIconId:I

.field private mMobileDataTypeView:Landroid/widget/ImageView;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileIsBidiDirectionEnabled:Z

.field private mMobileIsRoaming:Z

.field private mMobileRoamingContentDescription:Ljava/lang/String;

.field private mMobileRoamingIconId:I

.field private mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileSignalContentDescription:Ljava/lang/String;

.field private mMobileSignalIconId:I

.field private mMobileSignalView:Landroid/widget/ImageView;

.field private mMobileSimContentDescription:Ljava/lang/String;

.field private mMobileSimIconId:I

.field private mMobileSimView:Landroid/widget/ImageView;

.field private final mMobileSubId:I

.field private mMobileUseMotoUI:Z

.field private mMobileVisible:Z

.field private mobileCarrierDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;ILandroid/content/Context;)V
    .locals 4
    .param p2, "mobileSubId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    iput p2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimIconId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingIconId:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mobileCarrierDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileIsRoaming:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileIsBidiDirectionEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSubId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileUseMotoUI:Z

    return p1
.end method


# virtual methods
.method public apply(Z)Z
    .locals 5
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mIsAirplaneModeEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->access$2200(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimIconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimIconId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingIconId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingIconId:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityIconId:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mobileCarrierDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mSecondaryTelephonyPadding:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->access$2300(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)I

    move-result v0

    :goto_6
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileUseMotoUI:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/MotorolaSignalClusterView;

    # getter for: Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->mWideTypeIconStartPadding:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->access$2400(Lcom/android/systemui/statusbar/MotorolaSignalClusterView;)I

    move-result v0

    :goto_7
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    sget-boolean v0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v2, "MotoSignalClusterView"

    const-string v3, "mobile: %s sig=%d typ=%d"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_a

    const-string v0, "VISIBLE"

    :goto_8
    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    const-string v0, "GONE"

    goto :goto_8
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0f0156

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSimView:Landroid/widget/ImageView;

    const v0, 0x7f0f00aa

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileSignalView:Landroid/widget/ImageView;

    const v0, 0x7f0f0157

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileRoamingView:Lcom/android/systemui/statusbar/AnimatedImageView;

    const v0, 0x7f0f00ab

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataTypeView:Landroid/widget/ImageView;

    const v0, 0x7f0f0158

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MotorolaSignalClusterView$PhoneState;->mMobileDataActivityView:Lcom/android/systemui/statusbar/AnimatedImageView;

    return-void
.end method
