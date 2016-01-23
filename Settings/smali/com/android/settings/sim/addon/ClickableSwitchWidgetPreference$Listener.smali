.class Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;
.super Ljava/lang/Object;
.source "ClickableSwitchWidgetPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;->this$0:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
    .param p2, "x1"    # Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;-><init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;->this$0:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->access$100(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 32
    :goto_1
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;->this$0:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    goto :goto_1
.end method
