.class Lcom/android/nfc/ScreenStateHelper;
.super Ljava/lang/Object;
.source "ScreenStateHelper.java"


# static fields
.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final SCREEN_STATE_UNKNOWN:I


# instance fields
.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 23
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 24
    return-void
.end method

.method static screenStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "screenState"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 49
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const-string v0, "OFF"

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "ON_LOCKED"

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "ON_UNLOCKED"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method checkScreenState()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x2

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
