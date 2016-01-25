.class final Lcom/android/systemui/volume/VolumeDialog$Accessibility;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field private mMgr:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialog$1;

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method private computeFeedbackEnabled()Z
    .locals 5

    .prologue
    .line 1005
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1007
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1008
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, -0x1

    if-eqz v3, :cond_0

    .line 1009
    const/4 v3, 0x1

    .line 1012
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mFeedbackEnabled:Z

    .line 1002
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5100(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 972
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3700(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$1;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3700(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$2;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->mMgr:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility$3;-><init>(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 997
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->updateFeedbackEnabled()V

    .line 998
    return-void
.end method
