.class public Lcom/motorola/internal/widget/GestureSharingTouchManager;
.super Ljava/lang/Object;
.source "GestureSharingTouchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSTouchManager"

.field private static mInstance:Lcom/motorola/internal/widget/GestureSharingTouchManager;

.field private static mModalityHandlerLocation:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

.field private static mModalityHandlerSensorHub:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mInstance:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    .line 34
    sput-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerSensorHub:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .line 35
    sput-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerLocation:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    .line 30
    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 31
    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingTouchManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager$1;-><init>(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingTouchManager$2;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager$2;-><init>(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingTouchManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/internal/widget/GestureSharingTouchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingTouchManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->handleScreenOff()V

    return-void
.end method

.method private disableGSTouchInputReceiver()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    .line 139
    :cond_0
    return-void
.end method

.method private enableGSTouchInputReceiver()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->disableGSTouchInputReceiver()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    .line 127
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mGSTouchInputReceiver:Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 129
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/internal/widget/GestureSharingTouchManager;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lcom/motorola/internal/widget/GestureSharingTouchManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mInstance:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;

    invoke-direct {v0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;-><init>()V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mInstance:Lcom/motorola/internal/widget/GestureSharingTouchManager;

    .line 85
    :cond_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mInstance:Lcom/motorola/internal/widget/GestureSharingTouchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleScreenOff()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.GS_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private handleScreenOn()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.GS_SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void
.end method


# virtual methods
.method public init(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/content/Context;)V
    .locals 3
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 97
    iput-object p2, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mContext:Landroid/content/Context;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "screenActionFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "packageRemovedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingTouchManager;->enableGSTouchInputReceiver()V

    .line 109
    invoke-static {p2}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->getInstance(Landroid/content/Context;)Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    move-result-object v2

    sput-object v2, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerSensorHub:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .line 110
    sget-object v2, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerSensorHub:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->init()V

    .line 112
    invoke-static {p2}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->getInstance(Landroid/content/Context;)Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    move-result-object v2

    sput-object v2, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerLocation:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    .line 113
    sget-object v2, Lcom/motorola/internal/widget/GestureSharingTouchManager;->mModalityHandlerLocation:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    invoke-virtual {v2}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->init()V

    .line 114
    return-void
.end method
