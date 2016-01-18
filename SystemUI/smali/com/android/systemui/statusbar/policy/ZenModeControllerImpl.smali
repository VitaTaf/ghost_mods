.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRequesting:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "ZenModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "zen_mode_config_etag"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 78
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 79
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireExitConditionChanged()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method private fireConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 184
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 186
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireEffectsSuppressorChanged()V
    .locals 3

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 166
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    goto :goto_0

    .line 168
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireExitConditionChanged()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v1

    .line 190
    .local v1, "exitCondition":Landroid/service/notification/Condition;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ZenModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitCondition changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 192
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onExitConditionChanged(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 194
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_1
    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 160
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    goto :goto_0

    .line 162
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireZenAvailableChanged(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 178
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    goto :goto_0

    .line 180
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private fireZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 172
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    goto :goto_0

    .line 174
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_0
    return-void
.end method

.method private updateConditions([Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Landroid/service/notification/Condition;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 199
    .local v1, "c":Landroid/service/notification/Condition;
    iget v4, v1, Landroid/service/notification/Condition;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 198
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 202
    .end local v1    # "c":Landroid/service/notification/Condition;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Landroid/service/notification/Condition;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getExitCondition()Landroid/service/notification/Condition;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeCondition()Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public getZen()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    return v0
.end method

.method public isCountdownConditionSupported()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isZenAvailable()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public requestConditions(Z)V
    .locals 3
    .param p1, "request"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 116
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V

    .line 121
    return-void
.end method

.method public setUserId(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 145
    return-void
.end method

.method public setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 102
    return-void
.end method
