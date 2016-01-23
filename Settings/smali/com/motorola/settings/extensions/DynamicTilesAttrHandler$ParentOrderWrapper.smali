.class Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
.super Ljava/lang/Object;
.source "DynamicTilesAttrHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentOrderWrapper"
.end annotation


# instance fields
.field order:I

.field parent:Lcom/android/settings/dashboard/DashboardCategory;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardCategory;I)V
    .locals 0
    .param p1, "parent"    # Lcom/android/settings/dashboard/DashboardCategory;
    .param p2, "order"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->parent:Lcom/android/settings/dashboard/DashboardCategory;

    .line 270
    iput p2, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->order:I

    .line 271
    return-void
.end method
