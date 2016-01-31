.class Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyBandAdapter"
.end annotation


# instance fields
.field private frequencyBandTitles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->frequencyBandTitles:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiApDialog;Lcom/android/settings/wifi/WifiApDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiApDialog;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiApDialog$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->frequencyBandTitles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->frequencyBandTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0f0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$FrequencyBandAdapter;->frequencyBandTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
