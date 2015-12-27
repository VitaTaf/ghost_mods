.class Lcom/android/systemui/recents/RecentsMultiStackDialog$3;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 138
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackIntent:Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    return-void
.end method
