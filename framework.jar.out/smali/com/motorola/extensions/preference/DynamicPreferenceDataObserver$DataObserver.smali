.class Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;
.super Landroid/database/ContentObserver;
.source "DynamicPreferenceDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field mOnAutoRefresh:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

.field final synthetic this$0:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;


# direct methods
.method public constructor <init>(Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;Landroid/os/Handler;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAutoReferesh"    # Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;->this$0:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    .line 81
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    iput-object p3, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;->mOnAutoRefresh:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    .line 83
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;->mOnAutoRefresh:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$DataObserver;->mOnAutoRefresh:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    invoke-interface {v0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;->refresh()V

    .line 90
    :cond_0
    return-void
.end method
