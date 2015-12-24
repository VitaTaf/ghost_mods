.class public Lcom/google/android/gms/internal/rh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rh$a;
    }
.end annotation


# instance fields
.field private final aqB:Lcom/google/android/gms/internal/rp;

.field private aqC:Lcom/google/android/gms/internal/rn;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/rh$a;Z)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/rn;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/rn;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rh;->aqC:Lcom/google/android/gms/internal/rn;

    new-instance v0, Lcom/google/android/gms/internal/rp;

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/rm;-><init>(Lcom/google/android/gms/internal/rh$a;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/rp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/rm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rh;->aqB:Lcom/google/android/gms/internal/rp;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public varargs a(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aqB:Lcom/google/android/gms/internal/rp;

    iget-object v7, p0, Lcom/google/android/gms/internal/rh;->aqC:Lcom/google/android/gms/internal/rn;

    new-instance v1, Lcom/google/android/gms/internal/rj;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/rj;-><init>(JLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/rp;->b(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/rh;->a(JLjava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aqB:Lcom/google/android/gms/internal/rp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rp;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aqB:Lcom/google/android/gms/internal/rp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rp;->stop()V

    return-void
.end method
