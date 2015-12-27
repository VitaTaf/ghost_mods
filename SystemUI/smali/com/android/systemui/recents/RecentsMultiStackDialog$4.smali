.class Lcom/android/systemui/recents/RecentsMultiStackDialog$4;
.super Ljava/lang/Object;
.source "RecentsMultiStackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsMultiStackDialog;->createAddStackPickAppDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->createNewStack(ILandroid/graphics/Rect;Landroid/content/Intent;)V

    .line 148
    return-void
.end method
