//
//  MovieServices.swift
//  movies
//
//  Created by Inés Rojas on 26/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation
import Alamofire



class MovieServices {
    
    private let domainV4 = "https://api.themoviedb.org/4/"
    private let domainV3 = "https://api.themoviedb.org/3/"
    private let headers: HTTPHeaders = [
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxZjVkMTM1ZjMyYTI3ODk2OTE1MjQ0NTA3Njk5ZDEyNSIsInN1YiI6IjVkYjRlOGFlMjVhNTM2MDAxOGU0ZTdkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.JuPyujgV86OTpL-VEGJpW2TbQR-K6rN0FShjbo2SRZ0",
        "Content-Type": "application/json;charset=utf-8"
    ]
    
    enum GetMoviesFailureReason: Int, Error {
        case unAuthorized = 401
        case notFound = 404
    }
    
    typealias GetMoviesResult = Result<MovieDBResponse, GetMoviesFailureReason>
    typealias GetMoviesCompletion = (_ result: GetMoviesResult) -> Void
   
    func getPopularMoviesV3(completion: @escaping GetMoviesCompletion) {
        let popularMoviesUrl = "\(domainV3)movie/popular?api_key=1f5d135f32a27896915244507699d125&language=en-US&page=1"
        AF.request(popularMoviesUrl,
                   method: .get,
                   encoding: JSONEncoding.default,
                   headers: headers)
            .responseJSON { response in
                switch response.result {
                case .success:
                    do{
                        guard let data = response.data else {
                            completion(.failure(GetMoviesFailureReason.notFound))
                            return
                        }

                        let movieDBresponse = try JSONDecoder().decode(MovieDBResponse.self, from: data)
                        completion(.success(movieDBresponse))
                    } catch {
                        completion(.failure(GetMoviesFailureReason.notFound))
                    }
                case .failure(_):
                    if let statusCode = response.response?.statusCode,
                        let reason = GetMoviesFailureReason(rawValue: statusCode) {
                        completion(.failure(reason))
                    }
                }
        }
    
    }
    
    func getTopRankedMoviesV3(completion: @escaping GetMoviesCompletion) {
        let topRankedMoviesUrl = "\(domainV3)movie/top_rated?api_key=1f5d135f32a27896915244507699d125&language=en-US&page=1"
        AF.request(topRankedMoviesUrl,
                   method: .get,
                   encoding: JSONEncoding.default,
                   headers: headers)
            .responseJSON { response in
                switch response.result {
                case .success:
                    do{
                        guard let data = response.data else {
                            completion(.failure(GetMoviesFailureReason.notFound))
                            return
                        }
                        
                        let movieDBresponse = try JSONDecoder().decode(MovieDBResponse.self, from: data)
                        completion(.success(movieDBresponse))
                    } catch {
                        completion(.failure(GetMoviesFailureReason.notFound))
                    }
                case .failure(_):
                    if let statusCode = response.response?.statusCode,
                        let reason = GetMoviesFailureReason(rawValue: statusCode) {
                        completion(.failure(reason))
                    }
                }
        }
    
    }
    
    func getUpcomingMoviesV3(completion: @escaping GetMoviesCompletion) {
        let upcomingMoviesUrl = "\(domainV3)movie/upcoming?api_key=1f5d135f32a27896915244507699d125&language=en-US&page=1"
        AF.request(upcomingMoviesUrl,
                   method: .get,
                   encoding: JSONEncoding.default,
                   headers: headers)
            .responseJSON { response in
                switch response.result {
                case .success:
                    do{
                        guard let data = response.data else {
                            completion(.failure(GetMoviesFailureReason.notFound))
                            return
                        }

                        let movieDBresponse = try JSONDecoder().decode(MovieDBResponse.self, from: data)
                        completion(.success(movieDBresponse))
                    } catch {
                        completion(.failure(GetMoviesFailureReason.notFound))
                    }
                case .failure(_):
                    if let statusCode = response.response?.statusCode,
                        let reason = GetMoviesFailureReason(rawValue: statusCode) {
                        completion(.failure(reason))
                    }
                }
        }
    
    }
    
}
