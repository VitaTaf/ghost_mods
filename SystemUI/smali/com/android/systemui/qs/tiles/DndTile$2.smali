.class Lcom/android/systemui/qs/tiles/DndTile$2;
.super Landroid/content/BroadcastReceiver;
.source "DndTile.java"


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
    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const-string v1, "visible"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$202(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$300(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/DndTile;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DndTileVisible"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mVisible:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DndTile;->access$200(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$2;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # invokes: Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$500(Lcom/android/systemui/qs/tiles/DndTile;)V

    .line 154
    return-void
.end method
