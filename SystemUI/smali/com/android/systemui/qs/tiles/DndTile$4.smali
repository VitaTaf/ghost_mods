.class Lcom/android/systemui/qs/tiles/DndTile$4;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public onInteraction()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onPrioritySettings()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1200(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->access$1100()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
