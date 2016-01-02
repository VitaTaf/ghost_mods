.class Lcom/android/systemui/recents/RecentsResizeTaskDialog$5;
.super Ljava/lang/Object;
.source "RecentsResizeTaskDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$5;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog$5;->this$0:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    const/4 v1, 0x5

    # invokes: Lcom/android/systemui/recents/RecentsResizeTaskDialog;->placeTasks(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;I)V

    .line 110
    return-void
.end method
