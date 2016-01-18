.class Lcom/android/systemui/qs/tiles/DndTile$1;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
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
    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$1;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$1;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/DndTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$100(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V

    .line 141
    return-void
.end method
