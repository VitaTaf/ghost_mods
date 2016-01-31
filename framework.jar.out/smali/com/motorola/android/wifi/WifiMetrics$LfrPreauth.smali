.class public final enum Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
.super Ljava/lang/Enum;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LfrPreauth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Preauth_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field public static final enum Preauth_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Default"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Preauth_Init"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Preauth_Started"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Preauth_Success"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Preauth_Failed"

    invoke-direct {v0, v1, v7}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Handover_Started"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Handover_Success"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Handover_Failed_Bssid_Mismatch"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const-string v1, "Handover_Failed_Disconnected"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->$VALUES:[Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->$VALUES:[Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    invoke-virtual {v0}, [Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    return-object v0
.end method
