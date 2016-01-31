.class public final enum Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;
.super Ljava/lang/Enum;
.source "GestureSharingModalityLocHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModalityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

.field public static final enum MOVING:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

.field public static final enum NONE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

.field public static final enum UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

.field public static final enum VEHICLE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->NONE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v4}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->MOVING:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const-string v1, "VEHICLE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->VEHICLE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    sget-object v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->UNKNOWN:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->NONE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->MOVING:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->VEHICLE:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->$VALUES:[Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->$VALUES:[Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    invoke-virtual {v0}, [Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$ModalityState;

    return-object v0
.end method
