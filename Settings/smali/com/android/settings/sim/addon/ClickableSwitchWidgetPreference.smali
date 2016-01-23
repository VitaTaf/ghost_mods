.class public Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
.super Landroid/preference/SwitchPreference;
.source "ClickableSwitchWidgetPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;,
        Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;-><init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->mListener:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;-><init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->mListener:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;-><init>(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->mListener:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v2, 0x1020361

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 53
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 54
    check-cast v1, Landroid/widget/Switch;

    .line 55
    .local v1, "switchView":Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v2, v0

    .line 58
    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 60
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 61
    check-cast v1, Landroid/widget/Switch;

    .line 62
    .restart local v1    # "switchView":Landroid/widget/Switch;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 63
    iget-object v2, p0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->mListener:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
