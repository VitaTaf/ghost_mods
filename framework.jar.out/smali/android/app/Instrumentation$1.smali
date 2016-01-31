.class Landroid/app/Instrumentation$1;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Instrumentation;

.field final synthetic val$contextThread:Landroid/os/IBinder;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requestCode:I

.field final synthetic val$target:Landroid/app/Activity;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$who:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Instrumentation;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/Instrumentation$1;->this$0:Landroid/app/Instrumentation;

    iput-object p2, p0, Landroid/app/Instrumentation$1;->val$who:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/Instrumentation$1;->val$contextThread:Landroid/os/IBinder;

    iput-object p4, p0, Landroid/app/Instrumentation$1;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/Instrumentation$1;->val$target:Landroid/app/Activity;

    iput-object p6, p0, Landroid/app/Instrumentation$1;->val$intent:Landroid/content/Intent;

    iput p7, p0, Landroid/app/Instrumentation$1;->val$requestCode:I

    iput-object p8, p0, Landroid/app/Instrumentation$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v0, p0, Landroid/app/Instrumentation$1;->this$0:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Instrumentation$1;->val$who:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Instrumentation$1;->val$contextThread:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Instrumentation$1;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/Instrumentation$1;->val$target:Landroid/app/Activity;

    iget-object v5, p0, Landroid/app/Instrumentation$1;->val$intent:Landroid/content/Intent;

    iget v6, p0, Landroid/app/Instrumentation$1;->val$requestCode:I

    iget-object v7, p0, Landroid/app/Instrumentation$1;->val$options:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    return-void
.end method
