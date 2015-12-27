.class Lcom/android/commands/am/Am$1;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am;->getRecentConfigurations(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/Am;

.field final synthetic val$recentConfigs:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Landroid/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    iput-object p2, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/Configuration;
    .param p2, "b"    # Landroid/content/res/Configuration;

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1811
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/res/Configuration;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/am/Am$1;->compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method
