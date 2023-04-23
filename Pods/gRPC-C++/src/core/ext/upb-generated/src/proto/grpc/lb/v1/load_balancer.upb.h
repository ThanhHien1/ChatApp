/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     src/proto/grpc/lb/v1/load_balancer.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#ifndef SRC_PROTO_GRPC_LB_V1_LOAD_BALANCER_PROTO_UPB_H_
#define SRC_PROTO_GRPC_LB_V1_LOAD_BALANCER_PROTO_UPB_H_

#include "upb/msg_internal.h"
#include "upb/decode.h"
#include "upb/decode_fast.h"
#include "upb/encode.h"

#include "upb/port_def.inc"

#ifdef __cplusplus
extern "C" {
#endif

struct grpc_lb_v1_LoadBalanceRequest;
struct grpc_lb_v1_InitialLoadBalanceRequest;
struct grpc_lb_v1_ClientStatsPerToken;
struct grpc_lb_v1_ClientStats;
struct grpc_lb_v1_LoadBalanceResponse;
struct grpc_lb_v1_FallbackResponse;
struct grpc_lb_v1_InitialLoadBalanceResponse;
struct grpc_lb_v1_ServerList;
struct grpc_lb_v1_Server;
typedef struct grpc_lb_v1_LoadBalanceRequest grpc_lb_v1_LoadBalanceRequest;
typedef struct grpc_lb_v1_InitialLoadBalanceRequest grpc_lb_v1_InitialLoadBalanceRequest;
typedef struct grpc_lb_v1_ClientStatsPerToken grpc_lb_v1_ClientStatsPerToken;
typedef struct grpc_lb_v1_ClientStats grpc_lb_v1_ClientStats;
typedef struct grpc_lb_v1_LoadBalanceResponse grpc_lb_v1_LoadBalanceResponse;
typedef struct grpc_lb_v1_FallbackResponse grpc_lb_v1_FallbackResponse;
typedef struct grpc_lb_v1_InitialLoadBalanceResponse grpc_lb_v1_InitialLoadBalanceResponse;
typedef struct grpc_lb_v1_ServerList grpc_lb_v1_ServerList;
typedef struct grpc_lb_v1_Server grpc_lb_v1_Server;
extern const upb_msglayout grpc_lb_v1_LoadBalanceRequest_msginit;
extern const upb_msglayout grpc_lb_v1_InitialLoadBalanceRequest_msginit;
extern const upb_msglayout grpc_lb_v1_ClientStatsPerToken_msginit;
extern const upb_msglayout grpc_lb_v1_ClientStats_msginit;
extern const upb_msglayout grpc_lb_v1_LoadBalanceResponse_msginit;
extern const upb_msglayout grpc_lb_v1_FallbackResponse_msginit;
extern const upb_msglayout grpc_lb_v1_InitialLoadBalanceResponse_msginit;
extern const upb_msglayout grpc_lb_v1_ServerList_msginit;
extern const upb_msglayout grpc_lb_v1_Server_msginit;
struct google_protobuf_Duration;
struct google_protobuf_Timestamp;
extern const upb_msglayout google_protobuf_Duration_msginit;
extern const upb_msglayout google_protobuf_Timestamp_msginit;


/* grpc.lb.v1.LoadBalanceRequest */

UPB_INLINE grpc_lb_v1_LoadBalanceRequest *grpc_lb_v1_LoadBalanceRequest_new(upb_arena *arena) {
  return (grpc_lb_v1_LoadBalanceRequest *)_upb_msg_new(&grpc_lb_v1_LoadBalanceRequest_msginit, arena);
}
UPB_INLINE grpc_lb_v1_LoadBalanceRequest *grpc_lb_v1_LoadBalanceRequest_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_LoadBalanceRequest *ret = grpc_lb_v1_LoadBalanceRequest_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_LoadBalanceRequest_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_LoadBalanceRequest *grpc_lb_v1_LoadBalanceRequest_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_LoadBalanceRequest *ret = grpc_lb_v1_LoadBalanceRequest_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_LoadBalanceRequest_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_LoadBalanceRequest_serialize(const grpc_lb_v1_LoadBalanceRequest *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_LoadBalanceRequest_msginit, arena, len);
}

typedef enum {
  grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_initial_request = 1,
  grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_client_stats = 2,
  grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_NOT_SET = 0
} grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_oneofcases;
UPB_INLINE grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_oneofcases grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_case(const grpc_lb_v1_LoadBalanceRequest* msg) { return (grpc_lb_v1_LoadBalanceRequest_load_balance_request_type_oneofcases)*UPB_PTR_AT(msg, UPB_SIZE(4, 8), int32_t); }

UPB_INLINE bool grpc_lb_v1_LoadBalanceRequest_has_initial_request(const grpc_lb_v1_LoadBalanceRequest *msg) { return _upb_getoneofcase(msg, UPB_SIZE(4, 8)) == 1; }
UPB_INLINE const grpc_lb_v1_InitialLoadBalanceRequest* grpc_lb_v1_LoadBalanceRequest_initial_request(const grpc_lb_v1_LoadBalanceRequest *msg) { return UPB_READ_ONEOF(msg, const grpc_lb_v1_InitialLoadBalanceRequest*, UPB_SIZE(0, 0), UPB_SIZE(4, 8), 1, NULL); }
UPB_INLINE bool grpc_lb_v1_LoadBalanceRequest_has_client_stats(const grpc_lb_v1_LoadBalanceRequest *msg) { return _upb_getoneofcase(msg, UPB_SIZE(4, 8)) == 2; }
UPB_INLINE const grpc_lb_v1_ClientStats* grpc_lb_v1_LoadBalanceRequest_client_stats(const grpc_lb_v1_LoadBalanceRequest *msg) { return UPB_READ_ONEOF(msg, const grpc_lb_v1_ClientStats*, UPB_SIZE(0, 0), UPB_SIZE(4, 8), 2, NULL); }

UPB_INLINE void grpc_lb_v1_LoadBalanceRequest_set_initial_request(grpc_lb_v1_LoadBalanceRequest *msg, grpc_lb_v1_InitialLoadBalanceRequest* value) {
  UPB_WRITE_ONEOF(msg, grpc_lb_v1_InitialLoadBalanceRequest*, UPB_SIZE(0, 0), value, UPB_SIZE(4, 8), 1);
}
UPB_INLINE struct grpc_lb_v1_InitialLoadBalanceRequest* grpc_lb_v1_LoadBalanceRequest_mutable_initial_request(grpc_lb_v1_LoadBalanceRequest *msg, upb_arena *arena) {
  struct grpc_lb_v1_InitialLoadBalanceRequest* sub = (struct grpc_lb_v1_InitialLoadBalanceRequest*)grpc_lb_v1_LoadBalanceRequest_initial_request(msg);
  if (sub == NULL) {
    sub = (struct grpc_lb_v1_InitialLoadBalanceRequest*)_upb_msg_new(&grpc_lb_v1_InitialLoadBalanceRequest_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_LoadBalanceRequest_set_initial_request(msg, sub);
  }
  return sub;
}
UPB_INLINE void grpc_lb_v1_LoadBalanceRequest_set_client_stats(grpc_lb_v1_LoadBalanceRequest *msg, grpc_lb_v1_ClientStats* value) {
  UPB_WRITE_ONEOF(msg, grpc_lb_v1_ClientStats*, UPB_SIZE(0, 0), value, UPB_SIZE(4, 8), 2);
}
UPB_INLINE struct grpc_lb_v1_ClientStats* grpc_lb_v1_LoadBalanceRequest_mutable_client_stats(grpc_lb_v1_LoadBalanceRequest *msg, upb_arena *arena) {
  struct grpc_lb_v1_ClientStats* sub = (struct grpc_lb_v1_ClientStats*)grpc_lb_v1_LoadBalanceRequest_client_stats(msg);
  if (sub == NULL) {
    sub = (struct grpc_lb_v1_ClientStats*)_upb_msg_new(&grpc_lb_v1_ClientStats_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_LoadBalanceRequest_set_client_stats(msg, sub);
  }
  return sub;
}

/* grpc.lb.v1.InitialLoadBalanceRequest */

UPB_INLINE grpc_lb_v1_InitialLoadBalanceRequest *grpc_lb_v1_InitialLoadBalanceRequest_new(upb_arena *arena) {
  return (grpc_lb_v1_InitialLoadBalanceRequest *)_upb_msg_new(&grpc_lb_v1_InitialLoadBalanceRequest_msginit, arena);
}
UPB_INLINE grpc_lb_v1_InitialLoadBalanceRequest *grpc_lb_v1_InitialLoadBalanceRequest_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_InitialLoadBalanceRequest *ret = grpc_lb_v1_InitialLoadBalanceRequest_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_InitialLoadBalanceRequest_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_InitialLoadBalanceRequest *grpc_lb_v1_InitialLoadBalanceRequest_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_InitialLoadBalanceRequest *ret = grpc_lb_v1_InitialLoadBalanceRequest_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_InitialLoadBalanceRequest_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_InitialLoadBalanceRequest_serialize(const grpc_lb_v1_InitialLoadBalanceRequest *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_InitialLoadBalanceRequest_msginit, arena, len);
}

UPB_INLINE upb_strview grpc_lb_v1_InitialLoadBalanceRequest_name(const grpc_lb_v1_InitialLoadBalanceRequest *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(0, 0), upb_strview); }

UPB_INLINE void grpc_lb_v1_InitialLoadBalanceRequest_set_name(grpc_lb_v1_InitialLoadBalanceRequest *msg, upb_strview value) {
  *UPB_PTR_AT(msg, UPB_SIZE(0, 0), upb_strview) = value;
}

/* grpc.lb.v1.ClientStatsPerToken */

UPB_INLINE grpc_lb_v1_ClientStatsPerToken *grpc_lb_v1_ClientStatsPerToken_new(upb_arena *arena) {
  return (grpc_lb_v1_ClientStatsPerToken *)_upb_msg_new(&grpc_lb_v1_ClientStatsPerToken_msginit, arena);
}
UPB_INLINE grpc_lb_v1_ClientStatsPerToken *grpc_lb_v1_ClientStatsPerToken_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_ClientStatsPerToken *ret = grpc_lb_v1_ClientStatsPerToken_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_ClientStatsPerToken_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_ClientStatsPerToken *grpc_lb_v1_ClientStatsPerToken_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_ClientStatsPerToken *ret = grpc_lb_v1_ClientStatsPerToken_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_ClientStatsPerToken_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_ClientStatsPerToken_serialize(const grpc_lb_v1_ClientStatsPerToken *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_ClientStatsPerToken_msginit, arena, len);
}

UPB_INLINE upb_strview grpc_lb_v1_ClientStatsPerToken_load_balance_token(const grpc_lb_v1_ClientStatsPerToken *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(8, 8), upb_strview); }
UPB_INLINE int64_t grpc_lb_v1_ClientStatsPerToken_num_calls(const grpc_lb_v1_ClientStatsPerToken *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int64_t); }

UPB_INLINE void grpc_lb_v1_ClientStatsPerToken_set_load_balance_token(grpc_lb_v1_ClientStatsPerToken *msg, upb_strview value) {
  *UPB_PTR_AT(msg, UPB_SIZE(8, 8), upb_strview) = value;
}
UPB_INLINE void grpc_lb_v1_ClientStatsPerToken_set_num_calls(grpc_lb_v1_ClientStatsPerToken *msg, int64_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int64_t) = value;
}

/* grpc.lb.v1.ClientStats */

UPB_INLINE grpc_lb_v1_ClientStats *grpc_lb_v1_ClientStats_new(upb_arena *arena) {
  return (grpc_lb_v1_ClientStats *)_upb_msg_new(&grpc_lb_v1_ClientStats_msginit, arena);
}
UPB_INLINE grpc_lb_v1_ClientStats *grpc_lb_v1_ClientStats_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_ClientStats *ret = grpc_lb_v1_ClientStats_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_ClientStats_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_ClientStats *grpc_lb_v1_ClientStats_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_ClientStats *ret = grpc_lb_v1_ClientStats_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_ClientStats_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_ClientStats_serialize(const grpc_lb_v1_ClientStats *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_ClientStats_msginit, arena, len);
}

UPB_INLINE bool grpc_lb_v1_ClientStats_has_timestamp(const grpc_lb_v1_ClientStats *msg) { return _upb_hasbit(msg, 1); }
UPB_INLINE const struct google_protobuf_Timestamp* grpc_lb_v1_ClientStats_timestamp(const grpc_lb_v1_ClientStats *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(40, 40), const struct google_protobuf_Timestamp*); }
UPB_INLINE int64_t grpc_lb_v1_ClientStats_num_calls_started(const grpc_lb_v1_ClientStats *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(8, 8), int64_t); }
UPB_INLINE int64_t grpc_lb_v1_ClientStats_num_calls_finished(const grpc_lb_v1_ClientStats *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(16, 16), int64_t); }
UPB_INLINE int64_t grpc_lb_v1_ClientStats_num_calls_finished_with_client_failed_to_send(const grpc_lb_v1_ClientStats *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(24, 24), int64_t); }
UPB_INLINE int64_t grpc_lb_v1_ClientStats_num_calls_finished_known_received(const grpc_lb_v1_ClientStats *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(32, 32), int64_t); }
UPB_INLINE bool grpc_lb_v1_ClientStats_has_calls_finished_with_drop(const grpc_lb_v1_ClientStats *msg) { return _upb_has_submsg_nohasbit(msg, UPB_SIZE(44, 48)); }
UPB_INLINE const grpc_lb_v1_ClientStatsPerToken* const* grpc_lb_v1_ClientStats_calls_finished_with_drop(const grpc_lb_v1_ClientStats *msg, size_t *len) { return (const grpc_lb_v1_ClientStatsPerToken* const*)_upb_array_accessor(msg, UPB_SIZE(44, 48), len); }

UPB_INLINE void grpc_lb_v1_ClientStats_set_timestamp(grpc_lb_v1_ClientStats *msg, struct google_protobuf_Timestamp* value) {
  _upb_sethas(msg, 1);
  *UPB_PTR_AT(msg, UPB_SIZE(40, 40), struct google_protobuf_Timestamp*) = value;
}
UPB_INLINE struct google_protobuf_Timestamp* grpc_lb_v1_ClientStats_mutable_timestamp(grpc_lb_v1_ClientStats *msg, upb_arena *arena) {
  struct google_protobuf_Timestamp* sub = (struct google_protobuf_Timestamp*)grpc_lb_v1_ClientStats_timestamp(msg);
  if (sub == NULL) {
    sub = (struct google_protobuf_Timestamp*)_upb_msg_new(&google_protobuf_Timestamp_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_ClientStats_set_timestamp(msg, sub);
  }
  return sub;
}
UPB_INLINE void grpc_lb_v1_ClientStats_set_num_calls_started(grpc_lb_v1_ClientStats *msg, int64_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(8, 8), int64_t) = value;
}
UPB_INLINE void grpc_lb_v1_ClientStats_set_num_calls_finished(grpc_lb_v1_ClientStats *msg, int64_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(16, 16), int64_t) = value;
}
UPB_INLINE void grpc_lb_v1_ClientStats_set_num_calls_finished_with_client_failed_to_send(grpc_lb_v1_ClientStats *msg, int64_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(24, 24), int64_t) = value;
}
UPB_INLINE void grpc_lb_v1_ClientStats_set_num_calls_finished_known_received(grpc_lb_v1_ClientStats *msg, int64_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(32, 32), int64_t) = value;
}
UPB_INLINE grpc_lb_v1_ClientStatsPerToken** grpc_lb_v1_ClientStats_mutable_calls_finished_with_drop(grpc_lb_v1_ClientStats *msg, size_t *len) {
  return (grpc_lb_v1_ClientStatsPerToken**)_upb_array_mutable_accessor(msg, UPB_SIZE(44, 48), len);
}
UPB_INLINE grpc_lb_v1_ClientStatsPerToken** grpc_lb_v1_ClientStats_resize_calls_finished_with_drop(grpc_lb_v1_ClientStats *msg, size_t len, upb_arena *arena) {
  return (grpc_lb_v1_ClientStatsPerToken**)_upb_array_resize_accessor2(msg, UPB_SIZE(44, 48), len, UPB_SIZE(2, 3), arena);
}
UPB_INLINE struct grpc_lb_v1_ClientStatsPerToken* grpc_lb_v1_ClientStats_add_calls_finished_with_drop(grpc_lb_v1_ClientStats *msg, upb_arena *arena) {
  struct grpc_lb_v1_ClientStatsPerToken* sub = (struct grpc_lb_v1_ClientStatsPerToken*)_upb_msg_new(&grpc_lb_v1_ClientStatsPerToken_msginit, arena);
  bool ok = _upb_array_append_accessor2(
      msg, UPB_SIZE(44, 48), UPB_SIZE(2, 3), &sub, arena);
  if (!ok) return NULL;
  return sub;
}

/* grpc.lb.v1.LoadBalanceResponse */

UPB_INLINE grpc_lb_v1_LoadBalanceResponse *grpc_lb_v1_LoadBalanceResponse_new(upb_arena *arena) {
  return (grpc_lb_v1_LoadBalanceResponse *)_upb_msg_new(&grpc_lb_v1_LoadBalanceResponse_msginit, arena);
}
UPB_INLINE grpc_lb_v1_LoadBalanceResponse *grpc_lb_v1_LoadBalanceResponse_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_LoadBalanceResponse *ret = grpc_lb_v1_LoadBalanceResponse_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_LoadBalanceResponse_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_LoadBalanceResponse *grpc_lb_v1_LoadBalanceResponse_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_LoadBalanceResponse *ret = grpc_lb_v1_LoadBalanceResponse_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_LoadBalanceResponse_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_LoadBalanceResponse_serialize(const grpc_lb_v1_LoadBalanceResponse *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_LoadBalanceResponse_msginit, arena, len);
}

typedef enum {
  grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_initial_response = 1,
  grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_server_list = 2,
  grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_fallback_response = 3,
  grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_NOT_SET = 0
} grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_oneofcases;
UPB_INLINE grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_oneofcases grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_case(const grpc_lb_v1_LoadBalanceResponse* msg) { return (grpc_lb_v1_LoadBalanceResponse_load_balance_response_type_oneofcases)*UPB_PTR_AT(msg, UPB_SIZE(4, 8), int32_t); }

UPB_INLINE bool grpc_lb_v1_LoadBalanceResponse_has_initial_response(const grpc_lb_v1_LoadBalanceResponse *msg) { return _upb_getoneofcase(msg, UPB_SIZE(4, 8)) == 1; }
UPB_INLINE const grpc_lb_v1_InitialLoadBalanceResponse* grpc_lb_v1_LoadBalanceResponse_initial_response(const grpc_lb_v1_LoadBalanceResponse *msg) { return UPB_READ_ONEOF(msg, const grpc_lb_v1_InitialLoadBalanceResponse*, UPB_SIZE(0, 0), UPB_SIZE(4, 8), 1, NULL); }
UPB_INLINE bool grpc_lb_v1_LoadBalanceResponse_has_server_list(const grpc_lb_v1_LoadBalanceResponse *msg) { return _upb_getoneofcase(msg, UPB_SIZE(4, 8)) == 2; }
UPB_INLINE const grpc_lb_v1_ServerList* grpc_lb_v1_LoadBalanceResponse_server_list(const grpc_lb_v1_LoadBalanceResponse *msg) { return UPB_READ_ONEOF(msg, const grpc_lb_v1_ServerList*, UPB_SIZE(0, 0), UPB_SIZE(4, 8), 2, NULL); }
UPB_INLINE bool grpc_lb_v1_LoadBalanceResponse_has_fallback_response(const grpc_lb_v1_LoadBalanceResponse *msg) { return _upb_getoneofcase(msg, UPB_SIZE(4, 8)) == 3; }
UPB_INLINE const grpc_lb_v1_FallbackResponse* grpc_lb_v1_LoadBalanceResponse_fallback_response(const grpc_lb_v1_LoadBalanceResponse *msg) { return UPB_READ_ONEOF(msg, const grpc_lb_v1_FallbackResponse*, UPB_SIZE(0, 0), UPB_SIZE(4, 8), 3, NULL); }

UPB_INLINE void grpc_lb_v1_LoadBalanceResponse_set_initial_response(grpc_lb_v1_LoadBalanceResponse *msg, grpc_lb_v1_InitialLoadBalanceResponse* value) {
  UPB_WRITE_ONEOF(msg, grpc_lb_v1_InitialLoadBalanceResponse*, UPB_SIZE(0, 0), value, UPB_SIZE(4, 8), 1);
}
UPB_INLINE struct grpc_lb_v1_InitialLoadBalanceResponse* grpc_lb_v1_LoadBalanceResponse_mutable_initial_response(grpc_lb_v1_LoadBalanceResponse *msg, upb_arena *arena) {
  struct grpc_lb_v1_InitialLoadBalanceResponse* sub = (struct grpc_lb_v1_InitialLoadBalanceResponse*)grpc_lb_v1_LoadBalanceResponse_initial_response(msg);
  if (sub == NULL) {
    sub = (struct grpc_lb_v1_InitialLoadBalanceResponse*)_upb_msg_new(&grpc_lb_v1_InitialLoadBalanceResponse_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_LoadBalanceResponse_set_initial_response(msg, sub);
  }
  return sub;
}
UPB_INLINE void grpc_lb_v1_LoadBalanceResponse_set_server_list(grpc_lb_v1_LoadBalanceResponse *msg, grpc_lb_v1_ServerList* value) {
  UPB_WRITE_ONEOF(msg, grpc_lb_v1_ServerList*, UPB_SIZE(0, 0), value, UPB_SIZE(4, 8), 2);
}
UPB_INLINE struct grpc_lb_v1_ServerList* grpc_lb_v1_LoadBalanceResponse_mutable_server_list(grpc_lb_v1_LoadBalanceResponse *msg, upb_arena *arena) {
  struct grpc_lb_v1_ServerList* sub = (struct grpc_lb_v1_ServerList*)grpc_lb_v1_LoadBalanceResponse_server_list(msg);
  if (sub == NULL) {
    sub = (struct grpc_lb_v1_ServerList*)_upb_msg_new(&grpc_lb_v1_ServerList_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_LoadBalanceResponse_set_server_list(msg, sub);
  }
  return sub;
}
UPB_INLINE void grpc_lb_v1_LoadBalanceResponse_set_fallback_response(grpc_lb_v1_LoadBalanceResponse *msg, grpc_lb_v1_FallbackResponse* value) {
  UPB_WRITE_ONEOF(msg, grpc_lb_v1_FallbackResponse*, UPB_SIZE(0, 0), value, UPB_SIZE(4, 8), 3);
}
UPB_INLINE struct grpc_lb_v1_FallbackResponse* grpc_lb_v1_LoadBalanceResponse_mutable_fallback_response(grpc_lb_v1_LoadBalanceResponse *msg, upb_arena *arena) {
  struct grpc_lb_v1_FallbackResponse* sub = (struct grpc_lb_v1_FallbackResponse*)grpc_lb_v1_LoadBalanceResponse_fallback_response(msg);
  if (sub == NULL) {
    sub = (struct grpc_lb_v1_FallbackResponse*)_upb_msg_new(&grpc_lb_v1_FallbackResponse_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_LoadBalanceResponse_set_fallback_response(msg, sub);
  }
  return sub;
}

/* grpc.lb.v1.FallbackResponse */

UPB_INLINE grpc_lb_v1_FallbackResponse *grpc_lb_v1_FallbackResponse_new(upb_arena *arena) {
  return (grpc_lb_v1_FallbackResponse *)_upb_msg_new(&grpc_lb_v1_FallbackResponse_msginit, arena);
}
UPB_INLINE grpc_lb_v1_FallbackResponse *grpc_lb_v1_FallbackResponse_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_FallbackResponse *ret = grpc_lb_v1_FallbackResponse_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_FallbackResponse_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_FallbackResponse *grpc_lb_v1_FallbackResponse_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_FallbackResponse *ret = grpc_lb_v1_FallbackResponse_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_FallbackResponse_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_FallbackResponse_serialize(const grpc_lb_v1_FallbackResponse *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_FallbackResponse_msginit, arena, len);
}



/* grpc.lb.v1.InitialLoadBalanceResponse */

UPB_INLINE grpc_lb_v1_InitialLoadBalanceResponse *grpc_lb_v1_InitialLoadBalanceResponse_new(upb_arena *arena) {
  return (grpc_lb_v1_InitialLoadBalanceResponse *)_upb_msg_new(&grpc_lb_v1_InitialLoadBalanceResponse_msginit, arena);
}
UPB_INLINE grpc_lb_v1_InitialLoadBalanceResponse *grpc_lb_v1_InitialLoadBalanceResponse_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_InitialLoadBalanceResponse *ret = grpc_lb_v1_InitialLoadBalanceResponse_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_InitialLoadBalanceResponse_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_InitialLoadBalanceResponse *grpc_lb_v1_InitialLoadBalanceResponse_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_InitialLoadBalanceResponse *ret = grpc_lb_v1_InitialLoadBalanceResponse_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_InitialLoadBalanceResponse_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_InitialLoadBalanceResponse_serialize(const grpc_lb_v1_InitialLoadBalanceResponse *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_InitialLoadBalanceResponse_msginit, arena, len);
}

UPB_INLINE bool grpc_lb_v1_InitialLoadBalanceResponse_has_client_stats_report_interval(const grpc_lb_v1_InitialLoadBalanceResponse *msg) { return _upb_hasbit(msg, 1); }
UPB_INLINE const struct google_protobuf_Duration* grpc_lb_v1_InitialLoadBalanceResponse_client_stats_report_interval(const grpc_lb_v1_InitialLoadBalanceResponse *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(4, 8), const struct google_protobuf_Duration*); }

UPB_INLINE void grpc_lb_v1_InitialLoadBalanceResponse_set_client_stats_report_interval(grpc_lb_v1_InitialLoadBalanceResponse *msg, struct google_protobuf_Duration* value) {
  _upb_sethas(msg, 1);
  *UPB_PTR_AT(msg, UPB_SIZE(4, 8), struct google_protobuf_Duration*) = value;
}
UPB_INLINE struct google_protobuf_Duration* grpc_lb_v1_InitialLoadBalanceResponse_mutable_client_stats_report_interval(grpc_lb_v1_InitialLoadBalanceResponse *msg, upb_arena *arena) {
  struct google_protobuf_Duration* sub = (struct google_protobuf_Duration*)grpc_lb_v1_InitialLoadBalanceResponse_client_stats_report_interval(msg);
  if (sub == NULL) {
    sub = (struct google_protobuf_Duration*)_upb_msg_new(&google_protobuf_Duration_msginit, arena);
    if (!sub) return NULL;
    grpc_lb_v1_InitialLoadBalanceResponse_set_client_stats_report_interval(msg, sub);
  }
  return sub;
}

/* grpc.lb.v1.ServerList */

UPB_INLINE grpc_lb_v1_ServerList *grpc_lb_v1_ServerList_new(upb_arena *arena) {
  return (grpc_lb_v1_ServerList *)_upb_msg_new(&grpc_lb_v1_ServerList_msginit, arena);
}
UPB_INLINE grpc_lb_v1_ServerList *grpc_lb_v1_ServerList_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_ServerList *ret = grpc_lb_v1_ServerList_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_ServerList_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_ServerList *grpc_lb_v1_ServerList_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_ServerList *ret = grpc_lb_v1_ServerList_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_ServerList_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_ServerList_serialize(const grpc_lb_v1_ServerList *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_ServerList_msginit, arena, len);
}

UPB_INLINE bool grpc_lb_v1_ServerList_has_servers(const grpc_lb_v1_ServerList *msg) { return _upb_has_submsg_nohasbit(msg, UPB_SIZE(0, 0)); }
UPB_INLINE const grpc_lb_v1_Server* const* grpc_lb_v1_ServerList_servers(const grpc_lb_v1_ServerList *msg, size_t *len) { return (const grpc_lb_v1_Server* const*)_upb_array_accessor(msg, UPB_SIZE(0, 0), len); }

UPB_INLINE grpc_lb_v1_Server** grpc_lb_v1_ServerList_mutable_servers(grpc_lb_v1_ServerList *msg, size_t *len) {
  return (grpc_lb_v1_Server**)_upb_array_mutable_accessor(msg, UPB_SIZE(0, 0), len);
}
UPB_INLINE grpc_lb_v1_Server** grpc_lb_v1_ServerList_resize_servers(grpc_lb_v1_ServerList *msg, size_t len, upb_arena *arena) {
  return (grpc_lb_v1_Server**)_upb_array_resize_accessor2(msg, UPB_SIZE(0, 0), len, UPB_SIZE(2, 3), arena);
}
UPB_INLINE struct grpc_lb_v1_Server* grpc_lb_v1_ServerList_add_servers(grpc_lb_v1_ServerList *msg, upb_arena *arena) {
  struct grpc_lb_v1_Server* sub = (struct grpc_lb_v1_Server*)_upb_msg_new(&grpc_lb_v1_Server_msginit, arena);
  bool ok = _upb_array_append_accessor2(
      msg, UPB_SIZE(0, 0), UPB_SIZE(2, 3), &sub, arena);
  if (!ok) return NULL;
  return sub;
}

/* grpc.lb.v1.Server */

UPB_INLINE grpc_lb_v1_Server *grpc_lb_v1_Server_new(upb_arena *arena) {
  return (grpc_lb_v1_Server *)_upb_msg_new(&grpc_lb_v1_Server_msginit, arena);
}
UPB_INLINE grpc_lb_v1_Server *grpc_lb_v1_Server_parse(const char *buf, size_t size,
                        upb_arena *arena) {
  grpc_lb_v1_Server *ret = grpc_lb_v1_Server_new(arena);
  if (!ret) return NULL;
  if (!upb_decode(buf, size, ret, &grpc_lb_v1_Server_msginit, arena)) return NULL;
  return ret;
}
UPB_INLINE grpc_lb_v1_Server *grpc_lb_v1_Server_parse_ex(const char *buf, size_t size,
                           const upb_extreg *extreg, int options,
                           upb_arena *arena) {
  grpc_lb_v1_Server *ret = grpc_lb_v1_Server_new(arena);
  if (!ret) return NULL;
  if (!_upb_decode(buf, size, ret, &grpc_lb_v1_Server_msginit, extreg, options, arena)) {
    return NULL;
  }
  return ret;
}
UPB_INLINE char *grpc_lb_v1_Server_serialize(const grpc_lb_v1_Server *msg, upb_arena *arena, size_t *len) {
  return upb_encode(msg, &grpc_lb_v1_Server_msginit, arena, len);
}

UPB_INLINE upb_strview grpc_lb_v1_Server_ip_address(const grpc_lb_v1_Server *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(8, 8), upb_strview); }
UPB_INLINE int32_t grpc_lb_v1_Server_port(const grpc_lb_v1_Server *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int32_t); }
UPB_INLINE upb_strview grpc_lb_v1_Server_load_balance_token(const grpc_lb_v1_Server *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(16, 24), upb_strview); }
UPB_INLINE bool grpc_lb_v1_Server_drop(const grpc_lb_v1_Server *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(4, 4), bool); }

UPB_INLINE void grpc_lb_v1_Server_set_ip_address(grpc_lb_v1_Server *msg, upb_strview value) {
  *UPB_PTR_AT(msg, UPB_SIZE(8, 8), upb_strview) = value;
}
UPB_INLINE void grpc_lb_v1_Server_set_port(grpc_lb_v1_Server *msg, int32_t value) {
  *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int32_t) = value;
}
UPB_INLINE void grpc_lb_v1_Server_set_load_balance_token(grpc_lb_v1_Server *msg, upb_strview value) {
  *UPB_PTR_AT(msg, UPB_SIZE(16, 24), upb_strview) = value;
}
UPB_INLINE void grpc_lb_v1_Server_set_drop(grpc_lb_v1_Server *msg, bool value) {
  *UPB_PTR_AT(msg, UPB_SIZE(4, 4), bool) = value;
}

extern const upb_msglayout_file src_proto_grpc_lb_v1_load_balancer_proto_upb_file_layout;

#ifdef __cplusplus
}  /* extern "C" */
#endif

#include "upb/port_undef.inc"

#endif  /* SRC_PROTO_GRPC_LB_V1_LOAD_BALANCER_PROTO_UPB_H_ */
