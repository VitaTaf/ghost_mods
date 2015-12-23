.class final Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/ParcelableCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .locals 27
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 388
    const-class v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 389
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .local v5, "state":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/telecom/DisconnectCause;

    .line 392
    .local v6, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v7, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 395
    .local v8, "capabilities":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 396
    .local v9, "properties":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 397
    .local v10, "connectTimeMillis":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 398
    .local v12, "handle":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 399
    .local v13, "handlePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 400
    .local v14, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 401
    .local v15, "callerDisplayNamePresentation":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/telecom/GatewayInfo;

    .line 402
    .local v16, "gatewayInfo":Landroid/telecom/GatewayInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/telecom/PhoneAccountHandle;

    .line 403
    .local v17, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v18

    .line 405
    .local v18, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 406
    .local v19, "parentCallId":Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v20, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 408
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/telecom/StatusHints;

    .line 409
    .local v21, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 410
    .local v22, "videoState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 411
    .local v23, "videoStateHistory":I
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v24, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 413
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/os/Bundle;

    .line 414
    .local v25, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/os/Bundle;

    .line 415
    .local v26, "userdata":Landroid/os/Bundle;
    new-instance v3, Landroid/telecom/ParcelableCall;

    invoke-direct/range {v3 .. v26}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;IILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCall;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 441
    new-array v0, p1, [Landroid/telecom/ParcelableCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    move-result-object v0

    return-object v0
.end method
