.class final Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;
.super Ljava/lang/Object;
.source "PreferredServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/PreferredServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PaymentDefaults"
.end annotation


# instance fields
.field currentPreferred:Landroid/content/ComponentName;

.field preferForeground:Z

.field settingsDefault:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/PreferredServices;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/PreferredServices;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
